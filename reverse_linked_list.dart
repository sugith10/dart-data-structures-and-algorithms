class Node{
  int? data;
  Node? next;
  Node(this.data);
}

class LinkedList{
  Node? head;
  Node? tail;

  addNode(int data){
    Node newNode = Node(data);
    if(head==null){
      head = newNode;
    }else{
      tail?.next = newNode;
    }
    tail = newNode;
  }

  display(){
    Node? temp = head;
    if(temp == null){
      print('empty');
    }else{
      while(temp != null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  reverseLinkedList(){
    if(head==null){
      print('empty');
    }else{
      Node? current = head;
      Node? prev;
      Node? next;
      while(current != null){
        next = current.next;
        current.next = prev;
        prev = current;
        current = next;
      }
      head = prev;
      display();
    }
  }

  nextToIndex(int data , int index){
    if(head == null){
      print('empty');
    }else{
      int newIndex = 0;
      Node? temp = head;
       while(temp != null){
        if(newIndex == index){
          Node newNode = Node(data);
          if(temp == head){
            newNode.next = head?.next;
            head?.next = newNode;
          }else if(temp == tail){
            tail?.next = newNode;
          }else{
            newNode.next = temp.next;
            temp.next = newNode;
          }
        }
        newIndex++;
        temp = temp.next;
       }
    }
    display();
  }

  addAtIndex( int index){
    if(head == null){
      print("empty");
    }else{
      Node? temp = head;
      Node? prev;
      int count = 0;
      while(temp != null ){
        if(count == index){
          if(count == 0){
            head = head?.next;
            return;
          }else if(temp == tail){
           prev?.next = null; 
           return;
          }else{
            prev?.next = temp.next;
            return;
          }
        }
        count++;
        prev = temp;
        temp = temp.next;
      }
    }
  }
}

void main(List<String> args) {
  LinkedList list = LinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  // list.display();
  // list.reverseLinkedList();
  // list.nextToIndex(25, 0);
  list.addAtIndex(2);
}