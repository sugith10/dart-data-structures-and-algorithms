/// Index of String in Dart
///
/// Dart provides the `indexOf` and `lastIndexOf` methods to find the index of the first and last occurrence of a substring in a string, respectively.
///
/// Example:
main() {
  String text = "Dart programming is fun and Dart is powerful.";
  int indexOfDart = text.indexOf("Dart");
  int lastIndexOfDart = text.lastIndexOf("Dart");
  print(indexOfDart); // Output: 0
  print(lastIndexOfDart); // Output: 29
}
