  /// Find the longest common prefix among a list of strings.
  ///
  /// Given a list of strings [strs], this function sorts the list and finds
  /// the longest common prefix among the strings. It compares the first and
  /// last string in the sorted list to determine the common prefix.
  ///
  /// Example:
  /// ```dart
  /// Solution().longestCommonPrefix(["flower", "flow", "flight"]);
  /// // Output: "fl"
  /// ```

class Solution {
  String longestCommonPrefix(List<String> strs) {
    strs.sort();
    String firstStr = strs[0];
    String lastStr = strs[strs.length - 1];
    int count = 0;
    while (count < firstStr.length && firstStr[count] == lastStr[count]) {
      count++;
    }
    if (count == 0) {
      return "";
    } else {
      return firstStr.substring(0, count);
    }
  }
}

main() {
  Solution solution = Solution();

  List<String> words = ["flower", "flow", "flight"];
  String commonPrefix = solution.longestCommonPrefix(words);
  print("Longest Common Prefix: $commonPrefix");
}
