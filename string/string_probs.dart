main() {
  // print(Solutions().reverseString('sugith'));

  String firstName = "Sugith";
  String lastName = "K";
  String fullName = firstName + " " + lastName;
  print("Full Name: $fullName");

  // int length = fullName.length;
  // print("Length of Full Name: $length");

  // String greeting = "Hello";
  // print("First character: ${greeting[0]}"); 

   String message = "Good Morning";
  String subMessage = message.substring(0, 2);
  print("Substring: $subMessage");

   String replacedMessage = message.replaceAll("Good", "awesome");
   print(replacedMessage);

   
   String myName = 'Sugith';
     replacedMessage = myName.replaceAll('Su', 'us');
     print(replacedMessage);

  
  //  String lowercase = fullName.toLowerCase();
  // String uppercase = fullName.toUpperCase();
  // print("Lowercase: $lowercase");
  // print("Uppercase: $uppercase");

   bool containsSubstring = message.contains("Mo");
  print(" $containsSubstring");




}

class Solutions {
  String reverseString(String input) {
    if (input.length <= 1) {
      return input;
    }
    return reverseString(input.substring(1)) + input[0];
  }
}

