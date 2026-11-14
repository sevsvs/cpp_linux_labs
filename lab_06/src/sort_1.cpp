#include <iostream>
#include <vector>



void bubbleSort(std::vector<int>& arr) {
	int n = arr.size();
	bool swapped;
	int t;
	for (int i=0; i < n-1; i++) {
	swapped = false;
		for (int j=0; j<n-i-1; j++) {
			if (arr[j]>arr[j+1]) {
				t = arr[j];
				arr[j] = arr[j+1];
				arr[j+1] = t;
				swapped = true;
			}
			for (int k = 0; k < n; k++) {
                    	std::cout << arr[k] << " ";
                }
                std::cout << std::endl;
		}
		if (swapped == false) {
			break;
		}

	}

};

int main() {
	std::vector<int> a = {32, 12, 1, 50, 2, 10, 20132};
	int n = a.size();
	for (int i=0; i<n; i++) {
		std::cout << a[i] << " ";
	}
	std::cout << std::endl;
	std::cout << "Sort start:" << std::endl;
	bubbleSort(a);
	std::cout << "Sorted:" << std::endl;
	for (int i=0; i<n; i++) {
		std::cout << a[i] << " ";
	}
	std::cout << std::endl;

	return 0;
};
