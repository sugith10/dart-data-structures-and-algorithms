class MaxHeap {
  List<int> heap = [];

  insert(int value) {
    heap.add(value);
    heapfiyUp(heap.length - 1); // Fix: Call heapfiyUp instead of heapfiy
  }

  heapfiyUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[index] > heap[parentIndex]) {
        int temp = heap[index];
        heap[index] = heap[parentIndex];
        heap[parentIndex] = temp;

        index = parentIndex;
      } else {
        break;
      }
    }
  }

  heapfiyDown(int index) { // Add heapfiyDown function for downward checks
    while (true) {
      int leftChildIndex = 2 * index + 1;
      int rightChildIndex = 2 * index + 2;
      int largestIndex = index;

      if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[largestIndex]) {
        largestIndex = leftChildIndex;
      }

      if (rightChildIndex < heap.length && heap[rightChildIndex] > heap[largestIndex]) {
        largestIndex = rightChildIndex;
      }

      if (largestIndex == index) {
        break;
      }
      int temp = heap[index];
      heap[index] = heap[largestIndex];
      heap[largestIndex] = temp;

      index = largestIndex;
    }
  }
}
