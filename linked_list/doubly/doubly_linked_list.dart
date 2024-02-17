class Node {
  Node? prev;
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.prev = tail;
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print("empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void displayBackward() {
    if (tail == null) {
      print("empty");
    } else {
      Node? temp = tail;
      while (temp != null) {
        print(temp.data);
        temp = temp.prev;
      }
    }
  }

  void delete(int data) {
    if (head == null) {
      print('list is empty');
    } else {
      Node? temp = head;
      while (temp != null && temp.data != data) {
        temp = temp.next;
      }
      if (temp == head) {
        head = head?.next;
        head?.prev = null;
        return;
      }
      if (temp == tail) {
        tail = tail?.prev;
        tail?.next = null;
        return;
      }
      temp?.prev?.next = temp.next;
      temp?.next?.prev = temp.prev;
    }
  }

  void insertAt(int findNext, int data) {
    Node newNode = Node(data);
    Node? temp = head;
    while (temp != null && temp.data != findNext) {
      temp = temp.next;
    }
    newNode.prev = temp;
    newNode.next = temp?.next;
    if (temp == tail) {
      tail = newNode;
    } else {
      temp?.next?.prev = newNode;
    }
    temp?.next = newNode;
  }

  void sortedListDel() {
    if (head == null) {
      print("empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        if (temp.data == temp.next?.data) {
          Node? newTemp = temp;
          while (temp?.next != null && temp?.data == temp?.next?.data) {
            temp = temp?.next;
          }
          if (temp == tail) {
            tail = newTemp;
            tail?.next = null;
            return;
          }
          newTemp.next = temp?.next;
        } else {
          temp = temp.next;
        }
      }
    }
  }

  void sortedListDelete() {
    if (head == null) {
      print('empty');
    } else {
      Node? temp = head;
      while (temp != null) {
        if (temp.data == temp.next?.data) {
          temp.next = temp.next?.next;
        } else {
          temp = temp.next;
        }
      }
    }
  }

  void addToList(List<int>? numbers) {
    if (head == null) {
      print("list is empty");
    } else {
      Node? temp = head;
      while (temp != null) {
        numbers?.add(temp.data!);
      }
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  list.display();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.addNode(50);
  list.addNode(50);
  list.addNode(60);
  
  list.insertAt(30, 35);
  list.display();
}
