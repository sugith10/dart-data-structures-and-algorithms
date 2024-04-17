/// Lexicographical Comparison in Dart
///
/// Lexicographically refers to the dictionary order or alphabetical order of words.
/// When comparing strings lexicographically, it involves comparing the characters of
/// the strings one by one based on their Unicode or ASCII values. The comparison stops
/// at the first pair of different characters, and the result is determined by the
/// difference in values between the corresponding characters.
///
/// For example:
/// - "apple" comes before "banana" because 'a' comes before 'b'.
/// - "banana" comes before "cherry" because the first characters are the same ('b'),
///   and 'a' comes before 'c'.
/// - "apple" and "apple" are equal lexicographically.
///
/// In the context of the Dart programming language, the `compareTo` method is used for
/// lexicographical comparison of strings. The method returns a negative value if the
/// string comes before the argument, zero if they are equal, and a positive value if
/// the string comes after the argument.
void main() {
  String str1 = "apple";
  String str2 = "banana";
  int result = str1.compareTo(str2);
  print(result);  // Output: -1 (Negative value) 
}
