/// Splitting a String in Dart
///
/// Dart provides the `split` method to divide a string into a list of substrings based on a specified delimiter.
/// The `split` method takes the delimiter as an argument and returns a list of substrings.
///
/// Example:
void main(){
  String words = "one two three";
List<String> wordList = words.split(" "); 
print(wordList); // Output: ["one", "two", "three"]
}