class MaxHeap {
  List<int> heap = [];

  void insert(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      heap.add(arr[i]);
      heapifyUp();
    }
  }

  void heapifyUp() {
    int currentIdx = heap.length - 1;

    while (currentIdx > 0) {
      int parentIdx = (currentIdx - 1) ~/ 2;
      if (heap[currentIdx] > heap[parentIdx]) {
        swap(currentIdx, parentIdx);
        currentIdx = parentIdx;
      } else {
        break;
      }
    }
  }

void remove() {
  // Step 1: Remove the maximum value (root) from the heap
  int maxVal = heap.removeLast();
  
  // Step 2: Replace the root with the last element
  heap[0] = maxVal;
  
  // Step 3: Restore the heap property by performing heapifyDown
  heapifyDown(0);
}

void heapifyDown(int currentIdx) {
  // Step 4: Initialize maxValIdx as the current index
  int maxValIdx = currentIdx;
  
  // Step 5: Calculate the indices of the left and right children
  int leftIdx = 2 * currentIdx + 1;
  int rightIdx = 2 * currentIdx + 2;

  // Step 6: Check if the left child is within the heap and its value is greater
  if (leftIdx < heap.length && heap[leftIdx] > heap[maxValIdx]) {
    maxValIdx = leftIdx;
  }

  // Step 7: Check if the right child is within the heap and its value is greater
  if (rightIdx < heap.length && heap[rightIdx] > heap[maxValIdx]) {
    maxValIdx = rightIdx;
  }

  // Step 8: If the current index is not the maximum value index, swap and recursively heapifyDown
  if (currentIdx != maxValIdx) {
    swap(currentIdx, maxValIdx);
    heapifyDown(maxValIdx);
  }
}


  void swap(int currentIdx, int parentIdx) {
    int temp = heap[currentIdx];
    heap[currentIdx] = heap[parentIdx];
    heap[parentIdx] = temp;
  }
}

void main() {
  MaxHeap maxHeap = MaxHeap();
  maxHeap.insert([21, 3, 19, 5, 6]);
  maxHeap.remove();
  print(maxHeap.heap); // Output: [19, 6, 3, 5]
}