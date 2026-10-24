#include <iostream>
#include <chrono>
#include <thread>

using namespace std;

float formula1(float x) {
    return x * x - x * x + x * 4 - x * 5 + x + x;
}

float formula2(float x) {
    return x + x;
}

int main() {
    int iterations[] = {10000, 100000};
    float x = 0.13;

    for (int n : iterations) {
        float accum = 0.0;
        auto start = chrono::high_resolution_clock::now();

        for (int i = 0; i < n; i++) {
            float res1, res2;

            thread t1([&]() { res1 = formula1(x); });
            thread t2([&]() { res2 = formula2(x); });

            t1.join();
            t2.join();

            float res3 = res1 + res2 - res1;
            accum += res3;
        }

        auto end = chrono::high_resolution_clock::now();
        chrono::duration<double> delta = end - start;

        cout << "Iterations (threads): " << n << endl;
        cout << "Time: " << delta.count() << " seconds" << endl;
        cerr << "Accumulated: " << accum << endl;
    }

    return 0;
}
