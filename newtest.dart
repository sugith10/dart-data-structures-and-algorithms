class Node{
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;


  addNode(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode; 
    }
    tail = newNode;
  }

  dispalyForward(){
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


  dispalyBackward(){
    Node? current = head;
    Node? next ;
    Node? prev;

    while(current != null){
      next = current.next;
      current.next = current;
      prev = current;
      current = next;
    }

    head = prev;
    dispalyForward();

  }
}


main(){
  LinkedList list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);

  list.dispalyForward();
  list.dispalyBackward();
}