/// Checking if a String Starts or Ends with a Specific Substring in Dart
///
/// Dart provides the `startsWith` and `endsWith` methods to check whether a string starts
/// or ends with a specific substring, respectively. These methods return a boolean value,
/// indicating whether the condition is true or false.
///
/// Example:
void main(){
  String str = "Hello, Dart!";
bool startsWithHello = str.startsWith("Hello"); 
bool endsWithDart = str.endsWith("Dart"); 
print(startsWithHello); // Output: true
print(endsWithDart); // Output: false
}