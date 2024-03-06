/// Count Substring Occurrences in Dart
///
/// This function, `countSubstringOccurrences`, calculates the number of occurrences
/// of a specified substring within a given main string. It utilizes the `indexOf` method
/// to find each occurrence iteratively and increments the count accordingly.
///
/// Parameters:
/// - `mainString`: The main string in which occurrences are counted.
/// - `substring`: The substring to search for and count occurrences.
///
/// Returns:
/// - An integer representing the number of occurrences of the specified substring in the main string.
///
/// Example:

class Solution{
  int countSubstringOccurrences(String mainString, String substring) {
  int count = 0;
  int index = 0;

  while ((index = mainString.indexOf(substring, index)) != -1) {
    count++;
    index += substring.length;
  }

  return count;
}
}

void main() {
  String mainString = 'bromybbro';
  String substring = 'bro';

  int occurrences = Solution().countSubstringOccurrences(mainString, substring);

  print("The substring '$substring' appears $occurrences times in the string.");
}
