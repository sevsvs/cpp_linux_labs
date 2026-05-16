#include <iostream>
#include <mutex>
#include <vector>
#include <string>
#include <sstream>
#include <fstream>
#include <thread>
#include <chrono>
#include <memory>
#include <iomanip>

std::mutex global_mutex;

class Command {
public:
	virtual ~Command() = default;
	virtual void execute(int set_id) = 0;
};

class PrintCommand : public Command {
    std::string message;
public:
    PrintCommand(std::string msg) : message(std::move(msg)) {}
    void execute(int set_id) override {
        std::lock_guard<std::mutex> lock(global_mutex);
        std::cout << "[Набор бобра №" << set_id << "][КОНСОЛЬ]: " << message << std::endl;
    }
};

class FileAppendCommand : public Command {
    std::string filename;
    std::string data;
public:
    FileAppendCommand(std::string fname, std::string d) : filename(std::move(fname)), data(std::move(d)) {}
    void execute(int set_id) override {
        std::lock_guard<std::mutex> lock(global_mutex);
        std::ofstream file(filename, std::ios::app);
        if (file.is_open()) {
            file << data << "\n";
            std::cout << "[Набор бобра №" << set_id << "][ФАЙЛ БОБРШТЕЙНА]: Дозаписано в '" << filename << "'" << std::endl;
        } else {
            std::cerr << "[Набор бобра №" << set_id << "][БОБРОВАЯ ОШИБКА]: Не удалось открыть файл " << filename << std::endl;
        }
    }
};


class MathCommand : public Command {
    double operand1;
    double operand2;
    char operation;
public:
    MathCommand(double op1, char op, double op2) : operand1(op1), operand2(op2), operation(op) {}
    void execute(int set_id) override {
        double result = 0;
        bool valid = true;
        switch (operation) {
            case '+': result = operand1 + operand2; break;
            case '-': result = operand1 - operand2; break;
            case '*': result = operand1 * operand2; break;
            case '/':
                if (operand2 != 0) result = operand1 / operand2;
                else { valid = false; }
                break;
            default: valid = false;
        }

        std::lock_guard<std::mutex> lock(global_mutex);
        if (valid) {
            std::cout << "[Набор бобра №" << set_id << "][БОБРИФМЕТИКА]: "
                      << operand1 << " " << operation << " " << operand2 << " = " << result << std::endl;
        } else {
            std::cout << "[Набор бобра №" << set_id << "][БОБРИФМЕТИКА]: Ошибка бобриного вычисления (" << operand1 << operation << operand2 << ")" << std::endl;
        }
    }
};

class LoopCommand : public Command {
    int iterations;
    std::vector<std::shared_ptr<Command>> inner_commands;
public:
    LoopCommand(int count) : iterations(count) {}
    void addCommand(std::shared_ptr<Command> cmd) {
        inner_commands.push_back(cmd);
    }

    void execute(int set_id) override {
        for (int i = 0; i < iterations; ++i) {
            {
                std::lock_guard<std::mutex> lock(global_mutex);
                std::cout << "[Набор бобра №" << set_id << "][БОБРОЦИКЛ]: Бобритерация " << i + 1 << " из " << iterations << std::endl;
            }
            for (auto& cmd : inner_commands) {
                cmd->execute(set_id);
            }
        }
    }
};

void log_time(const std::string& status, int set_id) {

auto now = std::chrono::system_clock::now();
    auto time_t_now = std::chrono::system_clock::to_time_t(now);
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;
    std::tm tm_buf;
#if defined(_MSC_VER)
    localtime_s(&tm_buf, &time_t_now);
#else
    localtime_r(&time_t_now, &tm_buf);
#endif

    std::lock_guard<std::mutex> lock(global_mutex);
    std::cout << ">>> [" << std::put_time(&tm_buf, "%H:%M:%S") << "." << std::setfill('0') << std::setw(3) << ms.count() 
              << "] Поток Набора бобра №" << set_id << " " << status << std::endl;
}

void run_set(int set_id, std::vector<std::shared_ptr<Command>> commands) {
    log_time("ЗАПУЩЕН", set_id);
    for (auto& cmd : commands) {
        cmd->execute(set_id);
    }
    log_time("ЗАВЕРШЕН", set_id);
}

std::shared_ptr<Command> parse_single_command(std::stringstream& ss) {
    std::string cmd_type;
    if (!(ss >> cmd_type)) return nullptr;

    if (cmd_type == "print_to_screen") {
        std::string msg;
        ss >> msg;
        return std::make_shared<PrintCommand>(msg);
    }
    else if (cmd_type == "file_append") {
        std::string fname, data;
        ss >> fname >> data;
        return std::make_shared<FileAppendCommand>(fname, data);
    }
    else if (cmd_type == "calc") {
        double op1, op2;
        char sign;
        ss >> op1 >> sign >> op2;
        return std::make_shared<MathCommand>(op1, sign, op2);
    }
    return nullptr;
}

std::vector<std::shared_ptr<Command>> parse_line(const std::string& line) {
    std::vector<std::shared_ptr<Command>> commands;
    std::stringstream ss(line);
    std::string token;

    while (ss >> token) {
        if (token == "print_to_screen") {
            std::string msg; ss >> msg;
            commands.push_back(std::make_shared<PrintCommand>(msg));
        }
        else if (token == "file_append") {
            std::string fname, data; ss >> fname >> data;
            commands.push_back(std::make_shared<FileAppendCommand>(fname, data));
        }
        else if (token == "calc") {
            double op1, op2; char sign;
            ss >> op1 >> sign >> op2;
            commands.push_back(std::make_shared<MathCommand>(op1, sign, op2));
        }
        else if (token == "loop") {
            int count;
            ss >> count;
            auto loop = std::make_shared<LoopCommand>(count);
            std::string bracket;
            if (ss >> bracket && bracket == "[") {
                std::string inner_token;
                std::string sub_cmd_line = "";
                while (ss >> inner_token && inner_token != "]") {
                    if (inner_token == ";") {
                        std::stringstream sub_ss(sub_cmd_line);
                        auto sub_cmd = parse_single_command(sub_ss);
                        if (sub_cmd) loop->addCommand(sub_cmd);
                        sub_cmd_line = "";
                    } else {
                        sub_cmd_line += inner_token + " ";
                    }
                }
                if (!sub_cmd_line.empty()) {
                    std::stringstream sub_ss(sub_cmd_line);
                    auto sub_cmd = parse_single_command(sub_ss);
                    if (sub_cmd) loop->addCommand(sub_cmd);
                }
            }
            commands.push_back(loop);
        }
    }
    return commands;
}

int main() {
    std::setlocale(LC_ALL, "Russian");
    std::vector<std::vector<std::shared_ptr<Command>>> program_storage;
    std::string line;

    std::cout << "===== ИНТЕРПРЕТАТОР ПАРАЛЛЕЛЬНОГО ЯП BOBER =====" << std::endl;
    std::cout << "Правила ввода команд (в одну строку через пробел):\n"
              << "  - print_to_screen [слово]\n"
              << "  - file_append [файл.txt] [слово]\n"
              << "  - calc [число] [операция +, -, *, /] [число]\n"
              << "  - loop [кол-во] [ команду_1 ; команду_2 ; ] (обязательно с пробелами вокруг '[', ']' и ';')\n"
              << "Каждая строка — новый независимый набор.\n"
              << "Для завершения ввода нажмите ENTER на пустой строке.\n" << std::endl;

    int line_counter = 1;
    while (true) {
        std::cout << "Набор " << line_counter << " > ";
        std::getline(std::cin, line);
        if (line.empty()) {
            break;
        }
        program_storage.push_back(parse_line(line));
        line_counter++;
    }

    std::cout << "\n=== БОБЕР НАЧИНАЕТ ЗАПУСК ПАРАЛЛЕЛЬНОГО ВЫПОЛНЕНИЯ НАБОРОВ ===\n" << std::endl;

    std::vector<std::thread> workers;
    for (size_t i = 0; i < program_storage.size(); ++i) {
        workers.emplace_back(run_set, static_cast<int>(i + 1), program_storage[i]);
    }

    for (auto& thread : workers) {
        if (thread.joinable()) {
            thread.join();
        }
    }

    std::cout << "\n==============================================" << std::endl;
    std::cout << "Все бобровые потоки завершили работу. Программа окончена, плотина построена." << std::endl;
    return 0;
}
