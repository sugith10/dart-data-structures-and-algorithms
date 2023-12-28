void mergeSort(List<int> arr) {
  if (arr.length > 1) {  
    int mid = arr.length ~/ 2;
    List<int> leftHalf = arr.sublist(0, mid);
    List<int> rightHalf = arr.sublist(mid);

    mergeSort(leftHalf);
    mergeSort(rightHalf);

    int i = 0, j = 0, k = 0;

    while (i < leftHalf.length && j < rightHalf.length) {
      if (leftHalf[i] < rightHalf[j]) {
        arr[k] = leftHalf[i]; 
        i++;
      } else {
        arr[k] = rightHalf[j];
        j++;
      }
      k++;
    }

    while (i < leftHalf.length) {
      arr[k] = leftHalf[i];
      i++;
      k++;
    }

    while (j < rightHalf.length) {
      arr[k] = rightHalf[j];
      j++;
      k++;
    }
  }
}

void main() {
  List<int> mylist = [38, 27, 43, 10];
  print("Original array: $mylist");

  mergeSort(mylist);

  print("Sorted array: $mylist");
}
