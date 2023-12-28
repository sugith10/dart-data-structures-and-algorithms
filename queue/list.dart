class Stack{
  Stack(this.limit);
  int limit;
  int currrentLimit = 0;

  List<int> stack = [];
  
  enqueu(int data){
    if(currrentLimit<=limit){
      stack.add(data);
      currrentLimit++;
    }else{
      print('limit reached');
      // throw ArgumentError('shshs');
    }
  }

  dequeue(){
    if(stack.isNotEmpty){
      stack.removeAt(0);
      currrentLimit--;
    }
  }

  peekAll(){
    if(stack.isNotEmpty){
      print(stack);
    }else{
      print('empty');
    }
  }

  inreaseLimit(int data){
   limit = data; 
  }
}

main(){
  Stack stack = Stack(4);
  stack.enqueu(1);
  stack.enqueu(2);
  stack.enqueu(6);
  stack.enqueu(9);
  stack.enqueu(10);
  stack.enqueu(6);
  stack.enqueu(9);
  stack.peekAll();
  stack.enqueu(10);
  stack.dequeue();
  stack.inreaseLimit(7);
  stack.enqueu(999);
  stack.peekAll();
}