/// Leetcode 1941. Check if All Characters Have Equal Number of Occurrences 
/// https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/description/
/// 
/// Given a string s, return true if s is a good string, or false otherwise.
/// 
/// A string s is good if all the characters that appear in s have the same number of occurrences (i.e., the same frequency).
/// 

// Example 1:
//
// Input: s = "abacbc"
// Output: true
// Explanation: The characters that appear in s are 'a', 'b', and 'c'. All characters occur 2 times in s.

// Example 2:
//
// Input: s = "aaabb"
// Output: false
// Explanation: The characters that appear in s are 'a' and 'b'.
// 'a' occurs 3 times while 'b' occurs 2 times, which is not the same number of times.
class Solution {
  bool areOccurrencesEqual(String s) {
   Map<String,int> count = {};

   for(int i=0; i<s.length; i++){
       if(!count.keys.contains(s[i])){
           count[s[i]] = 1; 
       }else{
           int k = count[s[i]]!;
           count[s[i]] = ++k;
       }
   }

   int length = count[s[0]]!;
   for(int i in count.values){
       if(i != length){
           return false;
       }
   }

   return true;
  }
}
// #### Usage
void main() {
  Solution solution = Solution();
  print(solution.areOccurrencesEqual("abacbc")); // Output: true
  print(solution.areOccurrencesEqual("aaabb"));  // Output: false
}

// This function checks whether all characters within a given string `s` appear the same number of times. It returns `true` if every character in the string has the same frequency of occurrence, otherwise, it returns `false`.

// #### Parameters
// - `s` : A string whose characters' frequencies of occurrence are to be analyzed.

// #### Return Value
// - Returns `true` if all characters in the string `s` have the same frequency.
// - Returns `false` otherwise.

// #### Algorithm
// 1. Initialize an empty map `count` to keep track of the frequency of each character.
// 2. Iterate over each character in the string:
//    - If the character is not in the map, add it with a count of 1.
//    - If the character is already in the map, increment its count by 1.
// 3. Retrieve the frequency of the first character of the string to establish a reference frequency.
// 4. Iterate over the values in the map to ensure all frequencies match the reference frequency.
//    - If a mismatch is found, return `false`.
// 5. If no mismatches are found, return `true`.

//  Examples

// Example 1:
// ```dart
// Input: s = "abacbc"
// Output: true
// Explanation: The characters 'a', 'b', and 'c' occur exactly 2 times each.
// ```

// Example 2:
// ```dart
// Input: s = "aaabb"
// Output: false
// Explanation: The character 'a' occurs 3 times while 'b' occurs 2 times. Frequencies are not uniform.
// ```

