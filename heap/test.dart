// class MaxHeap {
//   List<int> heap = [];

//   insert(int value) {
//     heap.add(value);
//     heapfiyUp(heap.length - 1); // Fix: Call heapfiyUp instead of heapfiy
//   }

//   heapfiyUp(int index) {
//     while (index > 0) {
//       int parentIndex = (index - 1) ~/ 2;
//       if (heap[index] > heap[parentIndex]) {
//         int temp = heap[index];
//         heap[index] = heap[parentIndex];
//         heap[parentIndex] = temp;

//         index = parentIndex;
//       } else {
//         break;
//       }
//     }
//   }

//   heapfiyDown(int index) { // Add heapfiyDown function for downward checks
//     while (true) {
//       int leftChildIndex = 2 * index + 1;
//       int rightChildIndex = 2 * index + 2;
//       int largestIndex = index;

//       if (leftChildIndex < heap.length && heap[leftChildIndex] > heap[largestIndex]) {
//         largestIndex = leftChildIndex;
//       }

//       if (rightChildIndex < heap.length && heap[rightChildIndex] > heap[largestIndex]) {
//         largestIndex = rightChildIndex;
//       }

//       if (largestIndex == index) {
//         break;
//       }
//       int temp = heap[index];
//       heap[index] = heap[largestIndex];
//       heap[largestIndex] = temp;

//       index = largestIndex;
//     }
//   }
// }



// class Heap{
//   List<int> maxHeap = [];

//   add(int value){
//     maxHeap.add(value);
//     heapfiyUp(maxHeap.length - 1);
//   }

//   heapfiyUp(index){
//     while(index > 0){
//       int parent = (index-1) ~/ 2;
//       if(maxHeap[parent] > maxHeap[index]){
//         int temp = maxHeap[parent];
//         maxHeap[parent] = maxHeap[index];
//         maxHeap[index] = temp;
//         index = parent;
//       }else{
//         break;
//       }

//     }
//   }
// }

// main(){
//   Heap heap = Heap();
//   heap.add(776);
//   heap.add(848);
//   heap.add(22);
//   heap.add(83);
//   heap.add(90);
//   print(heap.maxHeap);
// }

// class Heap{
//   List<int> maxHeap = [];
  
//   add(int value){
//     maxHeap.add(value);
//     heapifyUp(maxHeap.length -1);
//   }

//   heapifyUp(int index){
//     while(index > 0){
//       int parent = (index-1) ~/ 2;
//       if(maxHeap[parent] > maxHeap[index]){
//         int temp = maxHeap[parent];
//         maxHeap[parent] = maxHeap[index];
//         maxHeap[index] = temp;
//       }else{
//         break;
//       }
//     }
//   }


// }


// class Heap{
//   List<int> maxHeap = [];

//   add(int data){
//     maxHeap.add(data);
//     heapify(maxHeap.length -1);
//   }

//   heapify(int index){
//     while(index > 0){
//       int parent = (index-1) ~/ 2;
//       if(maxHeap[parent] > maxHeap[index]){
//         swap(parent, index);
//       }else{
//         break;
//       }
//     }
//   }

//   remove(){
//     int last = maxHeap.removeLast();
//     maxHeap[0] = last;
//     heapifyDown(0);
//   }

//   heapifyDown(int index){
//     int max = index;
//     int left = (index * 2) + 1;
//     int right = (index * 2) + 2;

//     if(left<maxHeap.length && maxHeap[left] < maxHeap[index]){
//       max = left;
//     } 
//     if(right < maxHeap.length && maxHeap[right] < maxHeap[index]){
//       max = right;
//     }

//     if(max != index){
//       swap(index, max);
//       heapifyDown(max);
//     }
//   }

//   swap(int parent, int child){
//     int temp = maxHeap[parent];
//     maxHeap[parent] = maxHeap[child];
//     maxHeap[child] = temp;
//   }
// }

// main(){
//   Heap heap = Heap();
//   heap.add(328);
//   heap.add(38);
//   heap.add(97);
//   heap.add(92);
//   heap.add(908);
//   // heap.remove();
//   // print(heap.maxHeap);
//   // heap.remove();
//   print(heap.maxHeap);
// }

