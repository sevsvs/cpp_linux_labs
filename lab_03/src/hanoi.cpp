#include <iostream>
#include <list>
#include <string>

using namespace std;

void hanoi_towers(int quantity, int from, int to, int buf_peg, list<string>& listOfOperations)
{
	if (quantity != 0)
	{
		hanoi_towers(quantity-1, from, buf_peg, to, listOfOperations);

		string move = to_string(from) + "->" + to_string(to);
		listOfOperations.push_back(move);

		hanoi_towers(quantity-1, buf_peg, to, from, listOfOperations);
	}
}

int main()
{
	list<string> listOfOperations;
        setlocale(LC_ALL,"rus");
	int start_peg, destination_peg, buffer_peg, plate_quantity;
	cout << "Номер первого столбика:" << endl;
	cin >> start_peg;
	cout << "Номер конечного столбика:" << endl;
	cin >> destination_peg;
	cout << "Номер промежуточного столбика:" << endl;
	cin >> buffer_peg;
	cout << "Количество дисков:" << endl;
	cin >> plate_quantity;
	hanoi_towers(plate_quantity, start_peg, destination_peg, buffer_peg, listOfOperations);

	for (const string& op : listOfOperations) {
		cout << op << endl;
	}
	cout << "Пустой ли список до очистки: " << boolalpha << listOfOperations.empty() << endl;
	listOfOperations.clear();
	cout << "Пустой ли список после очистки: " << boolalpha << listOfOperations.empty() << endl;
	return 0;

}
