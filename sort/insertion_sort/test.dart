main(){
  List<int> nums = [10,20,30,1,56,6,98,6];

  insertionSort(List<int> nums){
    for(int i=0;i<nums.length;i++){
      int current = nums[i];
      int j = i-1;
      while(j>=0 && nums[j]>current){
        nums[j+1] = nums[j];
        j--;
      }
      nums[j+1] = current;
    }
    print(nums);
  }

  insertionSort(nums);
}