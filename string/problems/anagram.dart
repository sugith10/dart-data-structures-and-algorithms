/// Anagram Checker in Dart
///
/// This function, `areAnagrams`, provides functionality to check if two input strings
/// are anagrams of each other. Anagrams are strings that have the same characters
/// but may be in a different order.
///
/// Example:

class Solution {
  bool areAnagrams(String str1, String str2) {
    List<String> arr1 = str1.split('')..sort();
    List<String> arr2 = str2.split('')..sort();
  
    return arr1.join() == arr2.join();
  }
}

void main() {
  String str1 = "listen";
  String str2 = "silent";

  Solution anagramChecker = Solution();

  bool result = anagramChecker.areAnagrams(str1, str2);

  if (result) {
    print("$str1 and $str2 are anagrams.");
  } else {
    print("$str1 and $str2 are not anagrams.");
  }
}
