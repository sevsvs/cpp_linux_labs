#include <iostream>
#include <chrono>

using namespace std;


float iteratedFunction(float x) {

	return x*x -x*x + 4*x - 5*x + x + x;

}

int main() {
	char repeat;

	do {
		int n;
		cout << "Type a number of iterations: ";
		cin >> n;

		cout << endl;

		if (cin.fail()) {
			cout << "Invalid value" << endl;
			return 1;
		}

		float x = 0.13;
		float accum = 0.0;
		auto start = chrono::high_resolution_clock::now();

		for (int i = 0; i < n; i++) {
			accum += iteratedFunction(x);
		}

		auto end = chrono::high_resolution_clock::now();
		chrono::duration<double> delta = end - start;
		cout << "Time for " << n << " iterations: " << delta.count() << " seconds" << endl;

		cerr << "Accumulated value " << accum << endl;

		cout << "repeat?";
		cin >> repeat;
		} while (repeat == 'y');
	return 0;
}
