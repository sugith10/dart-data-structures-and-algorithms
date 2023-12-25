class Node {
  int? data;
  Node? prev;
  Node(this.data);
}

class Stack {
  Node? top;

  push(int data){
    Node newNode = Node(data);
    if(top == null){
      top = newNode;
    }else{
      newNode.prev = top;
      top = newNode;
    }
  }

  dispaly(){
    if(top == null){
      print('empty');
    }else{
      print(top?.data);
    }
  }

  pop(){
  
      top = top?.prev;
      dispaly();
    
  }
}


main(){
  Stack stack = Stack();

  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.dispaly();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.push(50);
  stack.dispaly();
  stack.pop();
  
}