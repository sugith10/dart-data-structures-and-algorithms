// class Heap{
//   void heapSort(List<int> arr){
//     int n= arr.length;

//     for(int i=(n~/2)-1; i>=0; i--){
//       heapify(arr, n, i);
  
//     }

//     for(int i=n-1; i>=0; i--){
//       int temp = arr[0];
//       arr[0] = arr[i];
//       arr[i] = temp;
//       heapify(arr, i, 0);
//     }
//   }

//   heapify(List<int> list, int n, int i){
//     int largest = i;
//     int left = (i*2) + 1;
//     int right = (i*2) + 2;

//     if(left<n && list[left] > list[largest]){
//       largest = left;
//     }
//     if(right<n && list[right] > list[largest]){
//       largest = right;
//     }

//     if(largest != i){
//       int temp = list[i];
//       list[i] = list[largest];
//       list[largest] = temp;
//       heapify(list, n, largest);
//     }
//   }
// }

// main(){
//   Heap heap = Heap();
//   List<int> nums = [10,2,5,32,66,1];
//   heap.heapSort(nums);
//   print(nums);
// }

class Heap{
  heapSort(List<int> list){
    int n = list.length;
    for(int i=(n~/2)-1; i>=0; i--){
      heapify(list, n, i);
    }

    for(int i=n-1; i>=0; i--){
      int temp = list[0];
      list[0] = list[i];
      list[i] = temp;
      heapify(list, i, 0);
    }
  }

  heapify(List<int> list, int n, int i){
    int largest = i;
    int left = (i*2) + 1;
    int right = (i*2) + 2;
    if(left<n && list[left] > list[largest]){
      largest = left;
    }
    if(right<n && list[right] > list[largest]){
      largest = right;
    }
    if(largest != i){
      int temp = list[largest];
      list[largest] = list[i];
      list[i] = temp;
      heapify(list, i, n);
    }
  }
}

main(){
  Heap heap = Heap();
  List<int> nums = [10,23,21,5,1,4,5];
  heap.heapSort(nums);
  print(nums);
}