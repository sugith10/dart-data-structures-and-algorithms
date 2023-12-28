class Node {
  int value;
  Node? prev;
  Node(this.value);
}

class Stack {
  Node? top;

  push(int value) {
    Node newNode = Node(value);
    if (top == null) {
      top = newNode;
    } else {
      newNode.prev = top;
      top = newNode;
    }
  }

  pop() {
    if (top == null) {
      print('empty');
    } else {
      top = top?.prev;
    }
  }

  printAll() {
    Node? temp = top;
    if (temp == null) {
      print('empty');
    } else {
      while (temp != null) {
        print(temp.value);
        temp = temp.prev;
      }
    }
  }
}

main() {
  Stack stack = Stack();
  stack.printAll();
  stack.push(10);
  stack.push(132);
  stack.push(200);
  stack.printAll();
  stack.pop();
  stack.printAll();
}
