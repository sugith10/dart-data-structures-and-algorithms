main(){
  List<int> nums = [10,20,30,40,50,60,70,80];
  BinarySearch().recursion(nums, 100, nums.length-1, 0);
   
}

class BinarySearch{
  recursion(List<int> nums, int key, int high, int low){
    if(low<=high){
      int mid =  (high+low)~/2;
      if(nums[mid]==key){
        print(mid);
        return;
      }else if(key < nums[mid]){
        recursion(nums, key,mid-1, low);
      }else if(key > nums[mid]){
         recursion(nums, key,high, mid+1);
      }
    }else{
       print('key not found');
      return;
    }
  }
}