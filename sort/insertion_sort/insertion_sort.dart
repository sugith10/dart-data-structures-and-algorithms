class InsertionSort{
  method(List<int> nums,){
    for(int i=0; i<nums.length;i++){
      // if(nums[i]>nums[i+1]){
        int current = nums[i]; 
        int j = i-1;
        while(j >= 0 && nums[j] > current){
          nums[j+1] = nums[j];
          j--;
        }
        nums[j+1] = current;
         
      // }
    }
    return nums;
  }
}

main(){
  List<int> nums = [10,20,32,42,1,22,16,2];
  nums = InsertionSort().method(nums);
  print(nums);
}