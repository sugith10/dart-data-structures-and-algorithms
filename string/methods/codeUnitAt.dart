/// Accessing Unicode Code Unit in Dart
///
/// Dart provides the `codeUnitAt` method to access the Unicode code unit of a character at a specific index in a string.
/// The `codeUnitAt` method takes the index of the character for which you want to retrieve the Unicode code unit.
///
/// Example:
void main() {
String word = "Dart";
int codeUnit = word.codeUnitAt(0);
print(codeUnit); // Output: 68
}

/// Unicode in Dart:
/// Dart strings are UTF-16 encoded, and each character is represented by one or more 16-bit code units.
/// The `codeUnitAt` method allows you to access the Unicode code unit of a character in a string.
