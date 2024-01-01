merge(List<int> nums){
  if(nums.length > 1){
    int mid = nums.length ~/ 2;

    List<int> first = nums.sublist(0,mid);
    List<int> second = nums.sublist(mid);

    merge(first);
    merge(second);

    int i=0, j=0, k=0;

    while(i<first.length && j<second.length){
      if(first[i]<second[j]){
        nums[k++] = first[i++];
      }else{
        nums[k++] = second[j++];
      }
    }

    while(i<first.length){
      nums[k++] = first[i++];
    }

    while(j<second.length){
      nums[k++] = second[j++];
    }
  }
}

main(){
  List<int> nums = [10,2,523,83,9];
  merge(nums);
  print(nums);
}