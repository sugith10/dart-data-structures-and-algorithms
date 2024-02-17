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

  int maxVal = heap.removeLast();
  
  heap[0] = maxVal;
  
  heapifyDown(0);
}

void heapifyDown(int currentIdx) {

  int maxValIdx = currentIdx;
  
  int leftIdx = 2 * currentIdx + 1;
  int rightIdx = 2 * currentIdx + 2;

  if (leftIdx < heap.length && heap[leftIdx] > heap[maxValIdx]) {
    maxValIdx = leftIdx;
  }

  if (rightIdx < heap.length && heap[rightIdx] > heap[maxValIdx]) {
    maxValIdx = rightIdx;
  }

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
  print(maxHeap.heap);
}
