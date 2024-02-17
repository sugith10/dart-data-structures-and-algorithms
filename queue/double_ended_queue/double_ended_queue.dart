class Node {
  int data;
  Node? next;
  Node(this.data);
}

class Doque {
  Node? head;
  Node? tail;

  void enqueuefront(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void enqueueback(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  void dequeueFront() {
    if (head == null) {
      print('empty');
    } else {
      head = head?.next;
    }
  }

  void dequeueBack() {
    if (head == null) {
      print('empty');
    } else {
      Node? temp = head;
      Node? prev;
      while (temp?.next != null) {
        prev = temp;
        temp = temp?.next;
      }
      tail = prev;
      tail?.next = null;
    }
  }

  void peekAll() {
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
}

main() {
  Doque doque = Doque();
  doque.enqueueback(20);
  doque.enqueueback(50);
  doque.enqueueback(90);
  doque.enqueuefront(60);
  doque.peekAll();
  doque.dequeueBack();
  doque.dequeueFront();
  doque.peekAll();
}
