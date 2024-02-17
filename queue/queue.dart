class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class Queue {
  Node? head;
  Node? tail;

  void enqueue(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

 void display() {
    if (head == null) {
      print('Empty.');
    } else {
      print(head?.data);
    }
  }

 void dequeue() {
    if (head == null) {
      print('Empty.');
    } else {
      head = head?.next;
    }
    display();
  }
}

main() {
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
