class Node{
  int data;
  Node? next;
  Node(this.data);
}

class CircularQueue{
  Node? head;
  Node? tail;

  enque(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
    }
    tail = newNode;
    tail?.next = head;
  }

  dequeue(){
    if(head == null){
      print('empty');
    }else{
      tail?.next =head?.next;
      head = head?.next;
    }
  }

  peek(){
    if(head == null){
      print('empty');
    }else{
      print(head?.data);
    }
  }
}


main(){
  CircularQueue circularQueue = CircularQueue(); 
  circularQueue.enque(10);
  circularQueue.enque(20);
  circularQueue.enque(30);
  circularQueue.dequeue();
  circularQueue.peek();
}

