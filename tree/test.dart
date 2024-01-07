// class Node{
//   int data;
//   Node? right, left;

//   Node(this.data);
// }

// class BST{
//   Node? root;

//   add(int data){
//     Node node = Node(data);
//     if(root == null){
//       root = node;
//     }else{
//       Node? temp = root;
//       while(temp != null){
//         if(data > temp.data){
//           if(temp.right == null){
//             temp.right = node;
//             return;
//           }else{
//             temp = temp.right;
//           }
//         }else{
//           if(temp.left == null){
//             temp.left = node;
//             return;
//           }else{
//             temp = temp.left;
//           }
//         }
//       }
//     }
//   }

//   show(Node? root){
//     if(root != null){
//       show(root.left);
//       print(root.data);
//       show(root.right);
//     }
//   }

//   delete(){
    
//   }

// }



// main(){
//   BST bst = BST();
//   bst.add(10);
//   bst.add(9);
//   bst.add(1);
//   bst.add(299);
//   bst.add(4);
//   bst.show(bst.root);
// }

//test2

class Node{
  int data;
  Node? left,right;
  Node(this.data);
}

class BST{
  Node? root;

  insert(int data){
    Node newNode = Node(data);
     if(root == null){
      root = newNode;
     }else{
      Node? temp = root;
      while(temp != null){
        if(data < temp.data){
          if(temp.left == null){
            temp.left = newNode;
            return;
          }
          temp = temp.left;
        }else if(data > temp.data){
          if(temp.right == null){
            temp.right = newNode;
            return;
          }
          temp = temp.right;
        }
      }
     }
  }

  inorder(Node? root){
    if(root != null){
      inorder(root.left);
      print(root.data);
      inorder(root.right);
    }
  }

  preorder(Node? root){
    if(root != null){
      print(root.data);
      preorder(root.left);
      preorder(root.right);
    }
  }

  postorder(Node? root){
    if(root != null){
      postorder(root.left);
      postorder(root.right);
      print(root.data);
    }
  }

//   delete(int data, root){
//     if(data < root.data){
//       root.left = delete(data, root.left);
//     }else if(data > root.data){
//       root.right = delete(data, root.right);
//     }else{
//       if(root.left == null){
//         return root.right;
//       }else if(root.right == null){
//         return root.left;
//       }
//       int low = findLow(root.right).data;
//       root.right = delete(low, root.right);
//     }
//     return root;
//   }

//  findLow(Node? root){
//     while(root!= null){
//       root = root.left;
//     }
//     return root;
//   }

  // delete(int data, root){
  //   if(data < root.data){
  //     root.left = delete(data, root.left);
  //   }else if(data > root.data){
  //     root.right = delete(data, root.right);
  //   }else{
  //     if(root.left == null){
  //       return root.right;
  //     }else if(root.right == null){
  //       return root.left;
  //     }else{
  //       int low = findLow(root.right);
  //       root.right = delete(low, root.right);
  //     }
  //   }
  //   return root;
  // }

  // int findLow(Node? root){
  //   while(root != null){
  //     root = root.left;
  //   }
  //   return root!.data;
  // }

  delete(int data, root){
    if(data< root.data){
      root.left = delete(data, root.left);
    }else if(data > root.data){
      root.right = delete(data, root.right);
    }else{
      if(root.left == null){
        return root.right;
      }else if(root.right == null){
        return root.left;
      }else{
        int low = findLow(root.right).data;
        root.right = delete(low, root.right);
      }
    }
    return root;
  }

   findLow(root){
    while(root != null){
      root = root.left;
    }
    return root;
  }
}

main(){
  BST bst = BST();
  bst.insert(10);
  bst.insert(12);
  bst.insert(16);
  bst.insert(19);
  bst.insert(8);
  bst.insert(9);
  bst.insert(192);
  bst.insert(123);
  // bst.inorder(bst.root);
  // bst.postorder(bst.root);
  bst.delete(19, bst.root);
  bst.inorder(bst.root);

}