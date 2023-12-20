main() {
  print(Solutions().reverseString('sugith'));
}

class Solutions {
  String reverseString(String input) {
    if (input.length <= 1) {
      return input;
    }
    return reverseString(input.substring(1)) + input[0];
  }
}

// void main(List<String> args) {
//   String reverseString(String input) {
//   if (input.length <= 1) {
//     return input;
//   }
//   return reverseString(input.substring(1)) + input[0];
// }
//  print(reverseString('sugith'));
// }

// main(){
//   String name = 'Sugith';
  
//   // String newName = 'RA';
//   // name = newName;
//   name = 'shjskjskjj';
//   print(name[0]);

// }