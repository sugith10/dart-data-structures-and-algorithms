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


main(){
  List<int> nums = [10,20,30,40,2,44,55,1,7,9];
  
  for(int i=0; i<nums.length; i++){
    for(int j=0; j<nums.length-i-1;j++ ){
      if(nums[j]>nums[j+1]){
        int temp = nums[j+1];
        nums[j+1] = nums[j];
        nums[j] = temp;
      }
    }
  }
  
  print(nums);
}
