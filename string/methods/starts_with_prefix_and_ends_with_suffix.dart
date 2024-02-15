/// Checking if a String Starts or Ends with a Specific Substring in Dart
///
/// Dart provides the startsWith and endsWith methods to check whether a string starts
/// or ends with a specific substring, respectively. These methods return a boolean value,
/// indicating whether the condition is true or false.
///
/// In the context of strings:
///
/// - Prefix: A prefix is a sequence of characters that appear at the beginning of a string. 
/// It is the initial part of a string that precedes the rest of the characters. 
/// For example, in the string "Hello, World!", the prefix is "Hello".
///
/// - Suffix: A suffix is a sequence of characters that appear at the end of a string. 
/// It is the final part of a string that follows the preceding characters. 
/// Using the same example, in the string "Hello, World!", the suffix is "World!".
///
/// In general terms, 
/// consider the string as a sequence of characters from the leftmost character to the rightmost character. 
/// The prefix is the part at the left end, and the suffix is the part at the right end. 
/// The terms are often used in string manipulation and can be relevant when performing operations like 
/// checking if a string starts with a certain prefix or ends with a specific suffix.
///
/// Example:
void main(){
  String str = "Hello, Dart!";
bool startsWithHello = str.startsWith("Hello"); 
bool endsWithDart = str.endsWith("Dart"); 
print(startsWithHello); // Output: true
print(endsWithDart); // Output: false
}