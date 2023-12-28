main(){
  List<int> arr = [10,3,53,7,9,99];
  bubbleSort(List<int> arr){
    for(int i=0; i<arr.length; i++){
      for(int j=0; j<arr.length-1-i; j++){
        if(arr[j] > arr[j+1]){
          int temp = arr[j+1];
          arr[j+1] = arr[j];
          arr[j] = temp;
        }
      }
    }
    print(arr);
  }

    bubbleSort(arr);
}