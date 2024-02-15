/// Converting String Case in Dart
///
/// Dart provides the `toUpperCase` and `toLowerCase` methods to convert a string to uppercase
/// or lowercase, respectively. These methods return new strings with the desired case.
///
/// Example:
void main() {
  String str = "Hello, Dart!";

  String upperCaseStr = str.toUpperCase();
  String lowerCaseStr = str.toLowerCase();

  print("in upper case: $upperCaseStr"); // Output: "in upper case: HELLO, DART!"
  print("in lower case: $lowerCaseStr"); // Output: "in lower case: hello, dart!"
}
