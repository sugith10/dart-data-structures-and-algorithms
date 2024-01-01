class Node{
  String key;
  dynamic value;
  Node? next;
  Node(this.key, this.value);
}

class HashTable {
  HashTable({required this.size}){
    table = List.generate(size, (index) => null);
  }
  List<Node?>? table;
  int size;
  int current = 0;

  hashcode(String key){
    return key.hashCode % size;
  }

  insert(String key, dynamic value,){
    int index = hashcode(key);
    if(current <= size){
    if(table?[index]!= null){
      Node(key, value);
    }else{
      Node newNode = Node(key, value);
      newNode.next = table?[index];
      table?[index] = newNode;
    }
    }else{
      print('size reached');
    }
  }

  search(String key){
    int index = hashcode(key);
    if(table?[index] != null){
      Node? temp;
      temp = table?[index];
      if(temp?.next == null){
        print(temp?.value);
      }else{
        while(temp?.value != null){
         if(temp?.key == key){
          print(temp?.value);
         }else{
          temp = temp?.next;
         }
         return;
        }
      }
    }else{
      print('Not found $key');
    }
  }
}

main(){
  HashTable hashTable = HashTable(size: 5);
  print(hashTable.table?.length);
  hashTable.insert('sugith', 80);
   hashTable.insert('sugith', 80);
  hashTable.insert('rock', 'hello');
  hashTable.search('sugith');
}