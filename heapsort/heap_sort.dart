class HeapSort {
  void sort(List<int> arr) {
    int n = arr.length;

    // Build max heap
    for (int i = (n ~/ 2) - 1; i >= 0; i--) {
      heapify(arr, n, i);
    }

    // Extract elements one by one from the heap
    for (int i = n - 1; i > 0; i--) {
      // Swap the root (max element) with the last element
      int temp = arr[0];
      arr[0] = arr[i];
      arr[i] = temp;

      // Heapify the reduced heap
      heapify(arr, i, 0);
    }
  }

  void heapify(List<int> arr, int n, int i) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;

    // If left child is larger than root
    if (left < n && arr[left] > arr[largest]) {
      largest = left;
    }

    // If right child is larger than largest so far
    if (right < n && arr[right] > arr[largest]) {
      largest = right;
    }

    // If largest is not the root
    if (largest != i) {
      int swap = arr[i];
      arr[i] = arr[largest];
      arr[largest] = swap;

      // Recursively heapify the affected sub-tree
      heapify(arr, n, largest);
    }
  }

  void printArray(List<int> arr) {
    int n = arr.length;
    for (int i = 0; i < n; ++i) {
      print('${arr[i]}');
    }
  }
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  HeapSort heapSort = HeapSort();

  print('Original array:');
  heapSort.printArray(arr);

  heapSort.sort(arr);

  print('Sorted array:');
  heapSort.printArray(arr);
}
