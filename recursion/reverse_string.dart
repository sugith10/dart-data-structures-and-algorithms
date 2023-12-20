void main(List<String> args) {
  String reverseString(String input) {
  if (input.length <= 1) {
    return input;
  }
  return reverseString(input.substring(1)) + input[0];
}
 print(reverseString('sugith'));
}