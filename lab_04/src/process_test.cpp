#include <iostream>
#include <chrono>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/mman.h>

using namespace std;

float formula1(float x) {
    return x * x - x * x + x * 4 - x * 5 + x + x;
}

float formula2(float x) {
    return x + x;
}

int main() {
    int iterations[] = {10000, 100000};
    float x = 0.13f;

    float* shared_results = (float*)mmap(NULL, 2 * sizeof(float), 
                                        PROT_READ | PROT_WRITE, 
                                        MAP_SHARED | MAP_ANONYMOUS, -1, 0);

    for (int n : iterations) {
        float accum = 0.0f;
        auto start = chrono::high_resolution_clock::now();

        for (int i = 0; i < n; i++) {
            pid_t p1 = fork();
            if (p1 == 0) {
                shared_results[0] = formula1(x);
                return 0;
            }

            pid_t p2 = fork();
            if (p2 == 0) {
                shared_results[1] = formula2(x);
                return 0;
            }

            waitpid(p1, NULL, 0);
            waitpid(p2, NULL, 0);

            float res1 = shared_results[0];
            float res2 = shared_results[1];
            float res3 = res1 + res2 - res1;
            
            accum += res3;
        }

        auto end = chrono::high_resolution_clock::now();
        chrono::duration<double> delta = end - start;

        cout << "Time for " << n << " iterations : " << delta.count() << " seconds" << endl;
        cerr << "Accumulated value " << accum << endl;
    }

    munmap(shared_results, 2 * sizeof(float));

    return 0;
}
