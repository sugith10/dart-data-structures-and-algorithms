/// Reverse a String in Dart
///
/// This example demonstrates the reversal of a given string using a recursive approach.
/// The function `reverseString` takes an input string and returns its reversed form.
///
/// Example:
/// ```dart
/// String reversed = Solutions().reverseString('sugith');
/// print(reversed); // Output: htigus
/// ```

class Solutions {
  String reverseString(String input) {
    if (input.length <= 1) {
      return input;
    }
    return reverseString(input.substring(1)) + input[0];
  }
}

void main() {
  String reversed = Solutions().reverseString('sugith');
  print(reversed);
}
