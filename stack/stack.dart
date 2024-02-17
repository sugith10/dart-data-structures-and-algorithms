class Stack {
  List<int> listStack = [];

  void push(int data) {
    listStack.add(data);
  }

  int pop() {
    int k = listStack.last;
    listStack.removeLast();
    return k;
  }

  void peekAll() {
    if (listStack.isEmpty) {
      print('empty');
    } else {
      print(listStack);
    }
  }

  void insertAtBottom(int data) {
    if (listStack.isEmpty) {
      push(data);
    } else {
      int k = pop();
      insertAtBottom(data); // Recursively insert at bottom
      push(k); // Push the element back onto the stack
    }
  }

  List<int> temp = [];

  List<int> reverse() {
    if (listStack.length > 0) {
      int k = pop();
      temp.add(k);
      reverse();
    }
    return temp;
  }

  void newAdd() {
    listStack = reverse();
  }

  int i = 0;

  void newFindAll(List<int> arr) {
    if (i < arr.length) {
      print(arr[i]);
      i++;
      newFindAll(arr);
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
  stack.newAdd();
  stack.peekAll();
  stack.newFindAll(stack.listStack);
}
