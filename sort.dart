main(){
  List<int> nums = [1,534,9,2634,82,2];
  // quickSort(nums, 0, nums.length -1);
  // merge(nums);
  // insertion(nums);
  // selection(nums);
  bubbleSort(nums);
  print(nums);
}






bubbleSort(List<int> nums){
  for(int i=0; i<nums.length; i++){
    for(int j=0; j<nums.length-i-1; j++){
      if(nums[j]> nums[j+1]){
        int temp = nums[j];
        nums[j] = nums[j+1];
        nums[j+1] = temp;
      }
    }
  }
}








selection(List<int> nums){
  for(int i=0; i<nums.length-1; i++){
    int k = i;
    for(int j=i+1; j<nums.length; j++){
      if(nums[j] < nums[k]){
        k = j;
      }
    }

    int temp = nums[k];
    nums[k] = nums[i];
    nums[i] = temp;
  }
}









// selection(List<int> nums){
//   for(int i=0; i<nums.length-1; i++){
//     int k = i;
//     for(int j=i; j<nums.length; j++){
//       if(nums[j] < nums[k]){
//       k = j;
//      }
//     }
//     int temp = nums[i];
//     nums[i] = nums[k];
//     nums[k] = temp;
//   }
// }










insertion(List<int> nums){
  for(int i=0; i<nums.length; i++){
   int j = i-1;
   int current = nums[i];
   while(j>=0 && nums[j]>current){
    nums[j+1] = nums[j];
    j--;
   }

   nums[j+1] = current;
  }
}















// merge(List<int> nums){
//   if(nums.length > 1){
//     int mid = nums.length ~/ 2;
//     List<int> first = nums.sublist(0,mid);
//     List<int> last = nums.sublist(mid);

// merge(first);
// merge(last);

//     int i=0, j=0, k=0;

//     while(i<first.length && j<last.length){
//       if(first[i]< last[j]){
//         nums[k++] = first[i++];
//       }else{
//         nums[k++] = last[j++];
//       }
//     }
    
//     while(i<first.length){
//       nums[k++] = first[i++];
//     }

//     while(j<last.length){
//       nums[k++] = last[j++];
//     }
     
//   }
// }























quickSort(List<int> nums, int low, int high){
  if(low<high){
    int pi = partition(nums, low, high);

    quickSort(nums, low, pi-1);
    quickSort(nums, pi+1, high);
  }
}

int partition(List<int> nums, int low, int high){
  int pivot = nums[low];
  int k = high;

  for(int i = high; i>=low; i--){
    if(nums[i]> pivot){
      int temp = nums[k];
      nums[k] = nums[i];
      nums[i] = temp;
      k--;
    }
  }

  int temp = nums[low];
  nums[low] = nums[k];
  nums[k] = temp;

  return k;
}