void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pi = partition(arr, low, high);
    quickSort(arr, low, pi - 1);
    quickSort(arr, pi + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[low];
  int k = high;
  
  for (int i = high; i >= low; i--) {
    if (arr[i] > pivot) {
      int temp = arr[i];
      arr[i] = arr[k];
      arr[k] = temp;
      k--;
    }
  }

  int temp = arr[k];
  arr[k] = arr[low];
  arr[low] = temp;

  return k;
}

void main() {
  List<int> arr = [1, 2, 9, 1, 5, 1];
  print("Unsorted List: $arr");

  quickSort(arr, 0, arr.length - 1);
  
  print("Sorted List: $arr");
}


