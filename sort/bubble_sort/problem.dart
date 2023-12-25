main(){
  List<int> arr = [10,20,22,35,10,31,20,21];
  for(int i = 0; i<arr.length; i++){
    for(int j=0; j<arr.length-i-1; j++){
      if(arr[j]>arr[j+1]){
        int temp = arr[j+1];
        arr[j+1] = arr[j];
        arr[j] = temp;
      }
    }
  }
  print(arr);
}

