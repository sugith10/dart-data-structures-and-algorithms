class MaxHeap {
  List<int> heap = [];

  // Function to add an element to the max heap
  void addToHeap(int value) {
    // Step 1: Add the new element to the end of the heap
    heap.add(value);

    // Step 2: Perform heapify to maintain the max heap property
    heapifyUp(heap.length - 1);
  }

  // Heapify up to maintain max heap property
  void heapifyUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[index] > heap[parentIndex]) {
        // Swap the current element with its parent
        int temp = heap[index];
        heap[index] = heap[parentIndex];
        heap[parentIndex] = temp;

        // Move up to the parent index
        index = parentIndex;
      } else {
        // The heap property is satisfied, break the loop
        break;
      }
    }
  }

  // Function to print the heap
  void printHeap() {
    print(heap);
  }
}

void main() {
  MaxHeap maxHeap = MaxHeap();

  // Adding elements to the max heap
  maxHeap.addToHeap(4);
  maxHeap.addToHeap(10);
  maxHeap.addToHeap(8);
  maxHeap.addToHeap(5);
  maxHeap.addToHeap(1);

  // Printing the max heap
  maxHeap.printHeap(); // Output: [10, 5, 8, 4, 1]
}
