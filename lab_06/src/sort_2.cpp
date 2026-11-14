#include <iostream>
#include <vector>

void heapify(std::vector<int>& arr, int n, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    if (left < n && arr[left] > arr[largest])
        largest = left;

    if (right < n && arr[right] > arr[largest])
        largest = right;

    if (largest != i) {
        std::swap(arr[i], arr[largest]);
        heapify(arr, n, largest);
    }
}

void heapSort(std::vector<int>& arr) {
    int n = arr.size();

    for (int i = n / 2 - 1; i >= 0; i--) {
        heapify(arr, n, i);
    }
    std::cout << "Formed heap:" << std::endl;
    for (int i=0; i<n; i++) {
        std::cout << arr[i] << " ";
    }
    std::cout << std::endl;

    for (int i = n - 1; i > 0; i--) {
        std::swap(arr[0], arr[i]);
        heapify(arr, i, 0);
    }
}

int main() {
    std::vector<int> a = {32, 12, 1, 50, 2, 10, 20132};
    int n = a.size();
    for (int i=0; i<n; i++) {
        std::cout << a[i] << " ";
    }
    std::cout << std::endl;
    std::cout << "Sort start:" << std::endl;
    heapSort(a);
    
    std::cout << "Sorted:" << std::endl;
    for (int num : a) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}