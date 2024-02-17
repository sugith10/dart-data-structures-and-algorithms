int binarySearch(List<int> nums, int find) {
  int high = nums.length - 1;
  int low = 0;
  int mid = 0;

  while (low <= high) {
    mid = (high + low) ~/ 2;
    if (nums[mid] == find) {
      mid++;
      return mid;
    } else if (find < nums[mid]) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return -1; // Not found
}

void main() {
  List<int> nums = [10, 20, 30, 35, 40, 46, 60];
  int find = 10;

  int result = binarySearch(nums, find);
  
  if (result != -1) {
    print('Element found at $result th position.');
  } else {
    print('Element not found in the list.');
  }
}
