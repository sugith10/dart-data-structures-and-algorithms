/// Remove all elements from a list
///
///In Dart, you can remove all elements from a list using the `clear` method. 
///The `clear` method is available on the `List` class and removes all elements 
///from the list, leaving it empty.
///
/// Here's an example:
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Remove all elements from the list
  numbers.clear();

  print(numbers);  // Output: []
}
