quick(List<int> arr, int low, int high){
  if(low<high){
    int pi = partition(arr, low, high);

    quick(arr, pi+1, high);
    quick(arr, low, pi-1);
  }
}

partition(List<int> arr, int low, int high){
  int pivot = arr[low];
  int k = high;

  for(int i= high; i>=low; i--){
    if(arr[i] > pivot){
      int temp = arr[k];
      arr[k] = arr[i];
      arr[i] = temp;
      k--;
    }
  }

int temp = arr[k];
  arr[k] = arr[low];
  arr[low] = temp;

  return k;
}


main(){
  List<int> nums = [10,20,12,4,5,123,5];
  quick(nums, 0, nums.length -1);
  print(nums);
}