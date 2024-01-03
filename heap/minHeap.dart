class MinHeap {
  List<int> heap = [];

  void insert(int data) {
    heap.add(data);
    _heapifyUp();
  }

  void _heapifyUp() {
    int index = heap.length - 1;
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[index] < heap[parentIndex]) {
        _swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  int? pop() {
    if (heap.isEmpty) {
      return null;
    }
    
    if (heap.length == 1) {
      return heap.removeLast();
    }

    int root = heap[0];
    heap[0] = heap.removeLast();
    _heapifyDown();

    return root;
  }

  void _heapifyDown() {
    int index = 0;

    while (true) {
      int leftChildIndex = 2 * index + 1;
      int rightChildIndex = 2 * index + 2;

      int smallest = index;

      if (leftChildIndex < heap.length && heap[smallest] > heap[leftChildIndex]) {
        smallest = leftChildIndex;
      }
      if (rightChildIndex < heap.length && heap[smallest] > heap[rightChildIndex]) {
        smallest = rightChildIndex;
      }

      if (smallest != index) {
        _swap(index, smallest);
        index = smallest;
      } else {
        break;
      }
    }
  }

  void _swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}

void main() {
  MinHeap minHeap = MinHeap();
  minHeap.insert(3);
  minHeap.insert(1);
  minHeap.insert(4);
  minHeap.insert(2);
  minHeap.insert(5);

  print(minHeap.heap); // Output: [1, 2, 4, 3, 5]

  int? popped = minHeap.pop();
  print('Popped: $popped'); // Output: Popped: 1
  print(minHeap.heap); // Output: [2, 3, 4, 5]
}
