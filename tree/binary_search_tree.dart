class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BST {
  Node? root;

  add(int data) {
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
            }else{
              temp = temp.left;
            }
          }
        }
      }
    }
  }

  search(int data){
    if(root == null){
      print('root is null');
    }else{
      Node?  temp = root;
      while(temp != null){
        if(temp.data == data){
          print('value found');
          return;
        }else{
          if(data > temp.data){
            temp = temp.right;
          }else{
            temp = temp.left;
          }
        }
      }
      print('value not found');
    }
  }


 delete(int data) {
    if (root == null) {
      print('Root is null.');
    } else {
      root = _remove(root, data);
    }
  }

  Node? _remove(Node? root, int data) {
    if (root == null) {
      return root;
    }

    if (data < root.data) {
      root.left = _remove(root.left, data);
    } else if (data > root.data) {
      root.right = _remove(root.right, data);
    } else {
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }

      // Node with two children, get the inorder successor
      root.data = _minValue(root.right!);

      // Delete the inorder successor
      root.right = _remove(root.right, root.data);
    }

    return root;
  }

  int _minValue(Node node) {
    int minValue = node.data;
    while (node.left != null) {
      minValue = node.left!.data;
      node = node.left!;
    }
    return minValue;
  }

}

main(){
  BST bst = BST();
  bst.add(34);
  bst.add(86);
  bst.add(299);
  bst.add(23);
  bst.add(99);
  bst.add(11);

  bst.search(23);
  // bst.search(700);
  bst.delete(23);
  bst.search(23);
  bst.search(11);
}
