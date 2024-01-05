class TrieNode {
  Map<String, TrieNode> collection = {};
  bool end = false;
}

class Trie {
  TrieNode root = TrieNode();

  insert(String word) {
    TrieNode current = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      current.collection.putIfAbsent(char, () => TrieNode());
      current = current.collection[char]!;
    }
    current.end = true;
  }

  serch(String word){
    TrieNode node = root;
    for(int i =0; i<word.length; i++){
      if(!node.collection.containsKey(word[i])){
        return false;
      }
      node = node.collection[word[i]]!;
    }
    return node.end;
  }

  List<String> prefixSearch(String prefix){
    List<String> results = [];
    TrieNode node = root;
    for(String char in prefix.split('')){
      if(!node.collection.containsKey((char))){
        return results;
      }
      node = node.collection[char]!;
    }
    _prefixHelper(node, prefix, results);
    return results;
  }

  _prefixHelper(TrieNode node,String currentPrefix, List<String> results){
    if(node.end){
      results.add(currentPrefix);
    }
    for(String char in node.collection.keys){
      _prefixHelper(node.collection[char]!, currentPrefix+char, results);
    }
  }


}

main(){
  Trie trie = Trie();
  trie.insert('apple');
  trie.insert('book');
  print(trie.serch('bookd'));
  
}
