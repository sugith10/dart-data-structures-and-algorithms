/// Replacing Substrings in Dart
///
/// Dart provides the `replaceAll` method to replace occurrences of a substring with another substring within a string.
/// The `replaceAll` method takes two arguments: the substring to find and the substring to replace it with.
///
/// Example:
main() {
  String sentence = "Hello, world!";
  String replaced = sentence.replaceAll("Hello", "Hi");
  print(replaced); // Output: "Hi, world!"
}
