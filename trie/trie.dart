class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String word) {
    TrieNode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.children.putIfAbsent(char, () => TrieNode());
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (String char in word.split('')) {
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isEndOfWord;
  }

  bool startsWith(String prefix) {
    TrieNode node = root;
    for (String char in prefix.split('')) {
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return true;
  }

  List<String> prefixSearch(String prefix) {
    List<String> results = [];
    TrieNode node = root;
    for (String char in prefix.split('')) {
      if (!node.children.containsKey(char)) {
        return results;
      }
      node = node.children[char]!;
    }
    _prefixHelper(node, prefix, results);
    return results;
  }

  void _prefixHelper(TrieNode node, String currentPrefix, List<String> results) {
    if (node.isEndOfWord) {
      results.add(currentPrefix);
    }
    for (String char in node.children.keys) {
      _prefixHelper(node.children[char]!, currentPrefix + char, results);
    }
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert('cat');
  // print(trie.search("apple")); 
  // print(trie.search("app"));   
  // print(trie.startsWith("app")); 
  // trie.insert("app");
  // print(trie.search("app"));   
  print(trie.prefixSearch("ca"));
  print(trie.prefixSearch("ap")); // Output: ["app", "apple"]
}
