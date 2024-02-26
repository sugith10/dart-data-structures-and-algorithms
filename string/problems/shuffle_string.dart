// Leetcode 1528

// You are given a string s and an integer array indices of the same length. 
// The string s will be shuffled such that the character at the ith position
//  moves to indices[i] in the shuffled string.
// Return the shuffled string.

// Example 1:
// Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
// Output: "leetcode"
// Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.

// Example 2:
// Input: s = "abc", indices = [0,1,2]
// Output: "abc"
// Explanation: After shuffling, each character remains in its position.

class Solution {
  String restoreString(String s, List<int> indices) {
    List<String> res = s.split('');
    for(int i=0; i<indices.length; i++){
        int k=indices[i];
        print(s[k]);
        res[k] = s[i];
    }

    return res.join();
  }
}

main(){
  String word = 'abc';
  List<int> indices = [0,1,2];
  word = Solution().restoreString(word, indices);
  print(word);
}