main(){
  fib(int x , {int a=0, int b=1}){
    if(x<0){
      return;
    }
    print(a);
    fib(x-1, a: b, b: a+b);
  }

  fib(19);
}