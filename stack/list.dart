class Stack {
  List<int> listStack = [];
  push(int data) {
    listStack.add(data);
  }

  pop() {
    listStack.removeLast();
  }

  peekAll() {
    if (listStack.isEmpty) {
      print('empty');
    } else {
      print(listStack);
    }
  }
}

main() {
  Stack stack = Stack();
  stack.peekAll();
  stack.push(10);
  stack.push(20);
  stack.push(50);
  stack.push(99);
  stack.pop();
  stack.peekAll();
}
