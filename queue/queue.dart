import '../stack/stack.dart';

class Node{
  int? data;
  Node? next;

  Node(this.data);
}

class Queue{
  Node? head;
  Node? tail;

  enqueue(int data){
    Node newNode = Node(data);
    if(head == null){
      head = tail = newNode;
    }else{
      tail?.next = newNode;
      tail = newNode;
    }
  }

  display(){
    if(head == null){
      print('empty');
    }else{
      print(head?.data);
    }
  }

  dequeue(){
    if(head == null){
      print('empty');
    }else{
      head = head?.next;
    }

    display();
  }
}

main(){
 Queue queue = Queue();
 queue.enqueue(10);
 queue.enqueue(20);
 queue.enqueue(30);
 queue.enqueue(40);

 queue.display();

 queue.dequeue();
 queue.dequeue();
 queue.dequeue();
 queue.dequeue();
}

