class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Queue {
  Queue(this.limit);
  int limit;
  int currentLimit=0;
  Node? head;
  Node? tail;

  enqueue(int data){
    Node newNode = Node(data);
    if(currentLimit<limit){
      if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
    }
      tail = newNode;
      currentLimit++;
    }else{
      print('Queue limit reached');
    }
  }

  dequeue(){
    if(head == null){
      print('empty');
      return;
    }else{
      head = head?.next;
    }
  currentLimit--;
     if (head == null) {
        tail = null; 
      }
  }

  peekAll(){
    if(head == null){
      print('empty');
    }else{
      Node? temp = head;
      while(temp!= null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }

}

main(){
  Queue queue = Queue(5);

  queue.enqueue(44);
  queue.enqueue(55);
  queue.enqueue(88);
  queue.enqueue(10);
  queue.enqueue(55);
  queue.enqueue(88);
  queue.enqueue(10);
  queue.dequeue();
  queue.peekAll();
}
