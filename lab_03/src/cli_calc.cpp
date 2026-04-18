#include <iostream>
#include <string>
#include <vector>
#include <bitset>

using namespace std;

int main(){
	double num1, num2;
	unsigned int power;
	double result = 1.0;
	char operation, status;
	do {
		cout << "Enter first number: ";
		cin >> num1;
		cout << endl;
		cout << "Enter operation: ";
		cin >> operation;
		cout << endl;
		switch (operation)
		{
		case'+':
			cout << "Enter second number: ";
			cin >> num2;
			cout << endl;
			cout << "Result: " << num1 + num2 << endl;
			break;
		case'-':
			cout << "Enter second number: ";
			cin >> num2;
			cout << "Result: " << num1 - num2 << endl;
			break;
		case'^':
			cout << "Enter power (must be positive integer): ";
			cin >> power;
			for (int i = 0; i<power; i++) {
				result *= num1;
			}
			cout << "Result: " << result << endl;
			break;
		default:
			cout << "No such command" << endl;
		}
		cout << "Print y or Y to continue:";
		cin >> status;
		cout << endl << endl;
	} while (status == 'y' || status == 'Y');

	return 0;
}
