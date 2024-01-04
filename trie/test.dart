class TrieNode{
  Map<String,TrieNode> children = {};
  bool end = false;
}

class Trie{
  TrieNode trie = TrieNode();

  insert(String word){
    TrieNode current = trie;
    for(int i=0; i<word.length; i++){
      String char = word[i];
      current.children.putIfAbsent(char, () => TrieNode());
      current = current.children[char]!;
    }
    current.end = true;
  }

  search(String word){
    TrieNode node = trie;
    for(String char in word.split('')){
      if(!node.children.containsKey(char)){
        return false;
      }
      node = node.children[char]!;
    }
    return node.end;
  }
}