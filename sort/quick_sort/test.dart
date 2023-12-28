
// main(){
//   List<int> nums = [10,23,7,8,87];
//   quick(nums, 0, nums.length-1);
//   print(nums);
// }

// quick(List<int> nums, int low, int high){
//   if(low<high){
//     int pi = partition(nums, low, high);

//     quick(nums, pi+1, high);
//     quick(nums, low, pi-1);
//   }
// }

// partition(List<int> nums, int low, int high){
//   int pivot = nums[low];
//   int k = high;
//   for(int i = high; i>low; i--){
//     if(nums[i] > pivot){
//       int temp = nums[i];
//       nums[i] = nums[k];
//       nums[k] = temp;
//       k--;
//     }
//   }

//   int temp = nums[k];
//   nums[k] = nums[low];
//   nums[low] = temp;
  
//   return k;
// }


void main() {
  List<int> nums = [11, 23, 7, 8, 87];
  quick(nums, 0, nums.length - 1);
  print(nums);
}

void quick(List<int> nums, int low, int high) {
  if (low < high) {
    int pi = partition(nums, low, high);

    quick(nums, pi + 1, high);
    quick(nums, low, pi - 1);
  }
}

int partition(List<int> nums, int low, int high) {
  int pivot = nums[high]; 
  int i = low-1;

  for (int j = low; j < high; j++) {
    if (nums[j] > pivot) {
      i++;
      int temp = nums[i];
      nums[i] = nums[j];
      nums[j] = temp;
    }
  }

  int temp = nums[i + 1];
  nums[i + 1] = nums[high];
  nums[high] = temp;

  return i + 1;
}
