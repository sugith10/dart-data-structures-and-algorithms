/// String Interpolation in Dart
///
/// Definition:
/// String interpolation is a feature in Dart that allows you to embed expressions within string literals.
/// It provides a concise and readable way to construct strings by combining variables and expressions
/// directly within the string.
///
/// Purpose:
/// Interpolation in Dart
/// 
/// The primary purpose of string interpolation is to create dynamic strings that incorporate the values
/// of variables or the results of expressions, making it easier to generate formatted text or messages.
///
/// Syntax:
/// Dart uses the "$" symbol to indicate string interpolation. You can insert variables or expressions
/// within curly braces {} directly into a string.
///
/// Example:
/// The following example demonstrates how to use string interpolation to create a message by combining
/// the values of the 'greeting' and 'name' variables.

void main() {
  String greeting = 'Hello';
  String name = 'Raju';

  // String Interpolation Example:
  String fullMessage = "$greeting $name";
  
  print(fullMessage); // Output: "Hello Raju"
}
