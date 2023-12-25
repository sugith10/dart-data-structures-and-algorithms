void quickSort(List<int> list, int left, int right) {
  if (left < right) {
    int pivotIndex = partition(list, left, right);
    quickSort(list, left, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, right);
  }
}

int partition(List<int> list, int left, int right) {
  int pivot = list[right];
  int i = (left - 1); // Index of smaller element

  for (int j = left; j < right; j++) {
    if (list[j] <= pivot) {
      i++;
      // Swap list[i] and list[j]
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }

  // Swap list[i+1] and list[right] (or pivot)
  int temp = list[i + 1];
  list[i + 1] = list[right];
  list[right] = temp;

  return i + 1;
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print("Unsorted Array: $numbers");

  quickSort(numbers, 0, numbers.length - 1);

  print("Sorted array in ascending order: $numbers");
}
