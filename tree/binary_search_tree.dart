import 'dart:io';

class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BST {
  Node? root;

  void add(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
    } else {
      Node? temp = root;
      while (temp != null) {
        if (temp.data == data) {
          print("duplicate elements can't add be add");
          return;
        } else {
          if (data > temp.data) {
            if (temp.right == null) {
              temp.right = newNode;
              print('new one added to the right');
              return;
            } else {
              temp = temp.right;
            }
          } else {
            if (temp.left == null) {
              temp.left = newNode;
              print('new one added to the left');
              return;
            } else {
              temp = temp.left;
            }
          }
        }
      }
    }
  }

  void search(int data) {
    if (root == null) {
      print('root is null');
    } else {
      Node? temp = root;
      while (temp != null) {
        if (temp.data == data) {
          print(' value found ');
          return;
        } else {
          if (data < temp.data) {
            temp = temp.left;
          } else {
            temp = temp.right;
          }
        }
      }
      print('value not found');
    }
  }

  //traverse
  void inOrder(Node? root) {
    print('');
    inOrderTraversal(root);
  }

  void inOrderTraversal(Node? root) {
    if (root != null) {
      inOrderTraversal(root.left);
      stdout.write('${root.data} ');
      inOrderTraversal(root.right);
    }
  }

  void preOrder(Node? root) {
    print('');
    preOrderTraversal(root);
  }

  void preOrderTraversal(Node? root) {
    if (root != null) {
      stdout.write(root.data);
      preOrderTraversal(root.left);
      preOrderTraversal(root.right);
    }
  }

  void postOrder(Node? root) {
    print('');
    postOrderTraversal(root);
  }

  void postOrderTraversal(Node? root) {
    print(' ');
    if (root != null) {
      postOrderTraversal(root.left);
      postOrderTraversal(root.right);
      stdout.write(root.data);
    }
  }

  //bst or not
  bool bstOrNot(Node? root) {
    int k = 0;
    inOrder(Node? root) {
      if (root != null) {
        inOrder(root.left);
        if (k > root.data) {
          print('its not bst');
          return false;
        }
        inOrder(root.right);
      }
    }

    print('its bst');
    return true;
  }

  //delete bst
  delete(root, int value) {
    if (root == null) {
      print('root is null');
    } else {
      if (value < root.data) {
        root.left = delete(root.left, value);
      } else if (value > root.data) {
        root.right = delete(root.right, value);
      } else {
        if (root.left == null) {
          return root.right;
        } else if (root.right == null) {
          return root.left;
        }
        root.data = findMinNode(root.right).data;
        root.right = delete(root.right, root.data);
      }
    }
    return root;
  }

  findMinNode(root) {
    while (root.left != null) {
      root = root.left;
    }
    return root;
  }

  //closest value
  int closestValue(int target) {
    if (root == null) {
      print('BST is empty');
      return -1;
    }

    Node? current = root;
    int closest = current!.data;

    while (current != null) {
      if ((target - closest).abs() > (target - current.data).abs()) {
        closest = current.data;
      }

      if (target < current.data) {
        current = current.left;
      } else if (target > current.data) {
        current = current.right;
      } else {
        break;
      }
    }

    return closest;
  }
}

main() {
  BST bst = BST();
  bst.add(99);
  bst.add(150);
  bst.add(70);
  bst.add(23);
  bst.add(79);
  bst.add(24);
  bst.add(22);
  bst.add(87);
  bst.add(75);
  bst.add(210);
  bst.add(180);
  bst.add(170);
  bst.add(175);
  bst.add(90);
  bst.add(88);
  bst.add(11);
  bst.add(3);
  bst.add(1);
  bst.add(2);
  bst.add(14);

  // bst.bstOrNot(bst.root);
  bst.inOrder(bst.root);
  print('');
  bst.search(88);
  // print(bst.closestValue(85));
  // // bst.preOrderTraversal(bst.root);
  // // bst.postOrderTraversal(bst.root);
  // bst.delete(bst.root, 87);
  // bst.delete(bst.root, 210);
  // bst.inOrder(bst.root);
}
