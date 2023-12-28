// main() {
//   // List<int> nums = [1, 2, 5, 7, 99];
//   // int high = nums.length - 1;
//   // int low = 0;
//   // int mid = 0;
//   // binarySearch(List<int> nums, int key, int high, int low, int mid) {
//   //   if (low <= high) {
//   //     mid = (high + low) ~/ 2;
//   //     if (nums[mid] == key) {
//   //       print("$key at $mid");
//   //     } else if (key < nums[mid]) {
//   //       binarySearch(nums, key, mid - 1, low, mid);
//   //     } else {
//   //       binarySearch(nums, key, high, mid + 1, mid);
//   //     }
//   //   } else {
//   //     print("$key not found");
//   //   }
//   // }

//   // binarySearch(nums, 2, high, low, mid);

//   LinkedList list = LinkedList();

//   list.add(10);
//   list.add(20);
//   list.add(30);

//   list.display();
// }

// class Node{
//   int? data;
//   Node? next;
//   Node? prev;

//   Node(this.data);
// }

// class LinkedList{
//  Node? head;
//  Node? tail;

//  add(int data){
//   Node newNode = Node(data);
//   if(head == null){
//     head = newNode;
//   }else{
//     newNode.prev =tail;
//     tail?.next = newNode;
//   }
//   tail = newNode;
//  }

//  display(){
//   if(head == null){
//     print('empty');
//   }
//   Node? temp = head;
//   while(temp !=  null){
//     print(temp.data);
//     temp = temp.next;
//   }
//  }
// }

// main(){
//   List<int> nums = [10,20,30,40,2,44,55,1,7,9];

//   for(int i=0; i<nums.length; i++){
//     for(int j=0; j<nums.length-i-1;j++ ){
//       if(nums[j]>nums[j+1]){
//         int temp = nums[j+1];
//         nums[j+1] = nums[j];
//         nums[j] = temp;
//       }
//     }
//   }

//   print(nums);
// }

// void quickSort(List<int> arr, int low, int high) {
//   if (low < high) {
//     int pi = partition(arr, low, high);
//     quickSort(arr, low, pi - 1);
//     quickSort(arr, pi + 1, high);
//   }
// }

// partition(List<int> arr, int low, int high){
//   int pivot = arr[low];
//   int k = high;

//   for(int i=high;i>low;i--){
//     if(arr[i]>pivot){
//       int temp = arr[i];
//       arr[i] = arr[k];
//       arr[k] = temp;
//       k--;
//     }
//   }
//   int temp = arr[k];
//   arr[k] = arr[low];
//   arr[low] = temp;
//   return k;
// }

// main(){
//   List<int> arr = [11,22,11,15,78,90];
//   quickSort(arr, 0, arr.length -1);
//   print(arr);
// }

// import 'sort/quick_sort/quick_sort.dart';

// quickSearch(List<int> arr,int low,int high){
//   if(high> low){
//     int pi = partition(arr, low, high);
//     quickSearch(arr, low, pi-1);
//     quickSearch(arr, pi+1, high);
//   }
// }

// partioning(List<int> arr, int low, int high){
//   int pi = arr[low];
//   int k = high;

//   for(int i=high; i>low; i--){
//     if(arr[i] > pi){
//       int temp = arr[i];
//       arr[i] = arr[k];
//       arr[k] = temp;
//       k--;
//     }
//   }

//   int temp = arr[low];
//   arr[low] = arr[k];
//   arr[k] = temp;

//   return k;
// }

// main(){
//   List<int> arr = [10,11,1,3,7,134,9];
//   quickSearch(arr, 0, arr.length -1);
//   print(arr);
// }

// main(){
//   List<int> numbers = [10,20,30,40,50,24,1];
//   List<int> nums = numbers.sublist(0,3);
//   print(nums);
//   nums = numbers.sublist(3);
//   print(nums);
// }

// main(){
//   List<int> nums = [10,20,11,3,77,99,34];
//   mergeSort(nums);
//   print(nums);
// }

// mergeSort(List<int> arr){
//   if(arr.length > 1){
//     int mid = arr.length ~/ 2;
//     List<int> firstHalf = arr.sublist(0,mid);
//     List<int> secondHalf = arr.sublist(mid);

//     mergeSort(firstHalf);
//     mergeSort(secondHalf);

//     int i=0, j=0, k=0;
//     while(i<firstHalf.length && j<secondHalf.length){
//       if(firstHalf[i]<secondHalf[j]){
//         arr[k] = firstHalf[i++];
//       }else{
//         arr[k] = secondHalf[j++];
//       }
//       k++;
//     }

//     while(i<firstHalf.length){
//       arr[k++] = firstHalf[i++];
//     }

//     while(j<secondHalf.length){
//       arr[k++] = secondHalf[j++];
//     }
//   }
// }

// mergeSort(List<int> arr) {
//   if (arr.length > 1) {
//     int mid = arr.length ~/ 2;

//     List<int> first = arr.sublist(0, mid);
//     List<int> second = arr.sublist(mid);

//     mergeSort(first);
//     mergeSort(second);

//     int i = 0, j = 0, k = 0;
//     while (i < first.length && j < second.length) {
//       if (first[i] < second[j]) {
//         arr[k++] = first[i++];
//       } else {
//         arr[k++] = second[j++];
//       }
//     }

//     while (i < first.length) {
//       arr[k++] = first[i++];
//     }

//     while (j < second.length) {
//       arr[k++] = second[j++];
//     }
//   }
// }

// main() {
//   List<int> nums = [10, 11, 43, 1, 7, 88, 2];
//   mergeSort(nums);
//   print(nums);
// }


// void main() {
//   int key = 897;
//   int hashValue = key.hashCode % 5;

//   print('Original String: $key');
//   print('Hash Code: $hashValue');
// }


main(){
  List<int> nums = [10,2,534,21,1,7];

  for(int i=0; i<nums.length; i++){
    int current = nums[i];
    int j = i-1;
    while(j>=0 && nums[j] > current){
      int temp = nums[j];
      nums[j] = nums[j+1];
      nums[j+1] = temp;
      j--;
    }
    nums[j+1] = current;
  }

  print(nums);
}