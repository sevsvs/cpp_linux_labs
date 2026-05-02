
#include <iostream>
#include <chrono>

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
            float res1 = formula1(x);
            float res2 = formula2(x);
            float res3 = res1 + res2 - res1;
            accum += res3;
        }

        auto end = chrono::high_resolution_clock::now();
        chrono::duration<double> delta = end - start;

        cout << "Iterations: " << n << endl;
        cout << "Time: " << delta.count() << " seconds" << endl;
        cerr << "Accumulated value: " << accum << endl;
    }

    return 0;
}
