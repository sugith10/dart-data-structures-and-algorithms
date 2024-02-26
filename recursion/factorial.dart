main(){
  int k =facto(10);
  print(k);
}

 int facto(int a){
    if(a>0){
      return a * facto(a-1);
    }
    if(a == 0){
      return 1;
    }
      return 0;
  }

