/// Substring Extraction in Dart
///
/// Dart provides several methods for extracting substrings from a string. Here are examples of the available methods:
///
/// 1. [substring(startIndex)]: Extracts the substring starting from `startIndex` until the end of the string.
/// 2. [substring(startIndex, endIndex)]: Extracts the substring from `startIndex` to `endIndex` (exclusive).

void main() {
  String message = 'Hello Raju';

  // Example 1: Extract substring starting from index 6 until the end
  String sub1 = message.substring(6); 
  print(sub1);  // Output: "Raju"

  // Example 2: Extract substring from index 6 to 10 (exclusive)
  String sub3 = message.substring(0, 5); 
  print(sub3);  // Output: "Hello"
}
