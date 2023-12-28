class Node {
  int key;
  dynamic value;
  Node? next;

  Node(this.key, this.value);
}

// HashTable class represents a simple hash table with chaining
class HashTable {
  List<Node?> _table;

  // Constructor initializes the hash table with a specified size
  HashTable(int size)
      : _table = List.generate(size, (index) => null);

  // A simple hash function to determine the index
  int _hashFunction(int key) {
    return key % _table.length;
  }

  // Insert a key-value pair into the hash table
  void insert(int key, dynamic value) {
    int index = _hashFunction(key);
    // Check if the bucket is empty
    if (_table[index] == null) {
      _table[index] = Node(key, value);
    } else {
      // Collision handling: Chaining
      Node newNode = Node(key, value);
      newNode.next = _table[index];
      _table[index] = newNode;
    }
  }

  // Search for a key and return its corresponding value
  dynamic search(int key) {
    int index = _hashFunction(key);

    // Traverse the linked list at the specified index
    Node? current = _table[index];
    while (current != null) {
      if (current.key == key) {
        return current.value; // Key found
      }
      current = current.next;
    }

    return null; // Key not found
  }

  // Delete a key and its corresponding value from the hash table
  void delete(int key) {
    int index = _hashFunction(key);

    // Delete from the linked list at the specified index
    Node? current = _table[index];
    Node? previous;

    while (current != null && current.key != key) {
      previous = current;
      current = current.next;
    }

    if (current != null) {
      // If the key is found, remove it from the linked list
      if (previous != null) {
        previous.next = current.next;
      } else {
        _table[index] = current.next;
      }
    }
  }
}

void main() {
  // Create a hash table with a size of 10
  HashTable hashTable = HashTable(1);

  // Insert key-value pairs
  hashTable.insert(1, "John");
  hashTable.insert(2, "Doe");
  hashTable.insert(11, "Jane");

  // Search for keys and print the results
  print(hashTable.search(1)); // Output: John
  print(hashTable.search(11)); // Output: Jane

  // Delete a key-value pair
  hashTable.delete(2);

  // Search for the deleted key and print the result
  print(hashTable.search(2)); // Output: null (not found)
}
