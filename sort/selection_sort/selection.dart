main(){
  List<int> nums = [10,2,5,66,9,76];
  selection(List<int> nums){
    for(int i=0; i<nums.length; i++){
      int k=i;
     for(int j=i+1; j<nums.length-1; j++){
      if(nums[j]<nums[i]){
        k=j;
      }
     }
     nums[i] = nums[k];
    }
    print(nums);
  }

  selection(nums);
}