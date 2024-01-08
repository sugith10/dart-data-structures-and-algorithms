class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }

    tail = newNode;
  }

  display() {
    if (head == null) {
      print('empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  headRemove() {
    if (head == null) {
      print('empty');
    } else {
      if (head == tail) {
        head = null;
        tail = null;
        print("head removed");
      } else {
        head = head?.next;
        print("head removed");
      }
    }
  }

  tailRemove() {
    if (tail == null) {
      print('empty');
    } else {
      if (head == tail) {
        head = null;
        tail = null;
      } else {
        Node? temp = head;
        Node? prev;
        while (temp?.next != null) {
          prev = temp;
          temp = temp?.next;
        }
        tail = prev;
        tail?.next = null;
        print('tail removed');
      }
    }
  }

  removeElement(int data) {
    if (head?.data == data) {
      headRemove();
    } else {
      Node? temp = head;
      Node? prev;
      while (temp?.data != data && temp != null) {
        prev = temp;
        temp = temp.next;
      }
      if (temp == null) {
        print('not found');
      }
      if (temp == tail) {
        tail = prev;
        tail?.next = null;
      }
      prev?.next = temp?.next;
    }
  }

  inserAt(int nextTo, int data) {
    Node? temp = head;
    while (temp?.data != nextTo && temp != null) {
      temp = temp.next;
    }
    if (temp == null) {
      print("no $nextTo found");
      return;
    }
    Node newNode = Node(data);
    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
      // newNode.next = null;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  insertAtPrev(int target, int data) {
    if (head == null) {
      print("empty");
    } else {
      Node? temp = head;
      Node? prev;
      while (temp != null && temp.data != target) {
        prev = temp;
        temp = temp.next;
      }
      if (temp == null) {
        print('data is not foun');
        return;
      }
      Node newNode = Node(data);
      if (temp == tail) {
        prev?.next = newNode;
        newNode.next = tail;
        return;
      }
      newNode.next = prev?.next;
      prev?.next = newNode;
    }
  }

  inertToList(List<int> nums){
   Node? temp = head;
   while(temp != null){
    nums.add(temp.data!);
    temp = temp.next;
   }
  }


  reverse(){
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


main() {
  LinkedList list = LinkedList();

  // list.display();
  // list.addNode(1);
  // list.addNode(2);
  // list.addNode(3);
  // list.display();
  // list.removeElement(2);
  // list.display();
  // print('insert function');
  // list.insertAtPrev(2, 4);
  // list.display();
  //   print("last element ");
  //   print(list.tail?.data);
  //   list.headRemove();
  //   list.display();
  //   list.tailRemove();
  //   list.display();

  // List<int> nums = [];
  // list.inertToList(nums);
  // print(nums);

  List<int> nums = [10,20,30,35,50,60,69];

    listToLinked(){
      for(int i in nums){
        list.addNode(i);
      }
    }

    listToLinked();

    list.reverse();

}


