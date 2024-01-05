class Node{
  int data;
  Node? right, left;

  Node(this.data);
}

class BST{
  Node? root;

  add(int data){
    Node node = Node(data);
    if(root == null){
      root = node;
    }else{
      Node? temp = root;
      while(temp != null){
        if(data > temp.data){
          if(temp.right == null){
            temp.right = node;
            return;
          }else{
            temp = temp.right;
          }
        }else{
          if(temp.left == null){
            temp.left = node;
            return;
          }else{
            temp = temp.left;
          }
        }
      }
    }
  }

  show(Node? root){
    if(root != null){
      show(root.left);
      print(root.data);
      show(root.right);
    }
  }

  delete(){
    
  }

}



main(){
  BST bst = BST();
  bst.add(10);
  bst.add(9);
  bst.add(1);
  bst.add(299);
  bst.add(4);
  bst.show(bst.root);
}