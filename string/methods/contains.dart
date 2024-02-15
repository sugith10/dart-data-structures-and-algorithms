/// String Searching in Dart
///
/// Dart provides the `contains` method for searching within a string. Here is an example:
///
/// [contains(pattern)]: Checks if the string contains the specified `pattern`.
///
/// Returns `true` if the `pattern` is found, otherwise returns `false`.

void main() {
  String message = 'Hello Ramu';

  // Example: Check if the string contains the pattern "Hello"
  bool containsHello = message.contains("Hello");
  print(containsHello);  // Output: true
}
