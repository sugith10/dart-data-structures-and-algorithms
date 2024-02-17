class MinHeap {
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
      if (heap[currentIdx] < heap[parentIdx]) {
        swap(currentIdx, parentIdx);
        currentIdx = parentIdx;
      } else {
        break;
      }
    }
  }

  void remove() {
    int minVal = heap.removeLast();
    heap[0] = minVal;
    heapifyDown(0);
  }

  void heapifyDown(int currentIdx) {
    int minValIdx = currentIdx;
    int leftIdx = 2 * currentIdx + 1;
    int rightIdx = 2 * currentIdx + 2;

    if (leftIdx < heap.length && heap[leftIdx] < heap[minValIdx]) {
      minValIdx = leftIdx;
    }

    if (rightIdx < heap.length && heap[rightIdx] < heap[minValIdx]) {
      minValIdx = rightIdx;
    }

    if (currentIdx != minValIdx) {
      swap(currentIdx, minValIdx);
      heapifyDown(minValIdx);
    }
  }

  void swap(int currentIdx, int parentIdx) {
    int temp = heap[currentIdx];
    heap[currentIdx] = heap[parentIdx];
    heap[parentIdx] = temp;
  }
}

void main() {
  MinHeap minHeap = MinHeap();
  minHeap.insert([21, 3, 19, 5, 6]);
  minHeap.remove();
  print(minHeap.heap); 
}
