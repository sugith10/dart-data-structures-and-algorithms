main(){
  List<int> nums = [10,20,30,35,40,46,60];
  int high= nums.length-1;
  int low= 0;
  int mid=0;
  int find=10;
  
  while(low<=high){
    mid = (high+low)~/2;
    if(nums[mid]==find){
      mid++;
      print('element at $mid th position');
      break;
    }else if(find < nums[mid]){
      high = mid-1;
    }else{
      low = mid+1;
    }
  }
}