class Node{
  String key;
  dynamic data;
  Node? next;
  Node(this.key, this.data);
}

class HashTable{
  List<Node?>? table ;
  int size;
  HashTable(this.size){
    table = List.generate(size, (index) => null);
  }

  add(String key, dynamic data){
    int index = key.hashCode % size;
    Node newNode = Node(key, data);
    if(table?[index] == null){
      table?[index] = newNode;
    }else{
      newNode.next =  table?[index];
       table?[index] = newNode;
    }
  }

  remove(String key){
    int index = key.hashCode % size;
    if(table?[index] != null){
      if(table?[index]?.next == null){
        table?[index] = null;
        print('element removed');
        return;
      }else{
        Node? temp = table?[index];
        Node? prev;
        while(temp != null){
          if(temp.key == key){
            prev?.next = temp.next;
            print('removed');
            return;
          }
          prev = temp;
          temp = temp.next;
        }
      }
    }else{
      print('value not found');
    }
  }

  get(String key){
     int index = key.hashCode % size;
     if(table?[index] == null){
      print('empty');
     }else{
      print(table?[index]?.data);
     }
  }

  getAll(table){
    for(int i =0; i<table.length; i++){
      if(table[i] != null){
        print('At index $i = ${table?[i].data } ');
      }else{
        print('At index $i there is no value found');
      }
    }
  }

  void update(String key, dynamic newData) {
  int index = key.hashCode % size;
  Node? temp = table?[index];
  while (temp != null) {
    if (temp.key == key) {
      temp.data = newData;
      print('Value updated');
      return;
    }
    temp = temp.next;
  }
  print('Value not found');
}

}

main(){
  HashTable hashTable = HashTable(5);
  hashTable.add('sugith', 24);
  hashTable.add('rocky', 29);
  hashTable.add('ram', 21);
  hashTable.remove('ram');
  hashTable.get('sugith');
  hashTable.getAll(hashTable.table);
}