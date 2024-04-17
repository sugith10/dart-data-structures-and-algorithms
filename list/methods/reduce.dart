/// Find the maximum element in a list
///
///In Dart, you can find the maximum element in a list using 
///the reduce method along with the max function 
///from the dart:math library.
///
///Here's an example:

import 'dart:math';
void main() {
  List<int> numbers = [5, 2, 8, 1, 7, 3];

  // Find the maximum element using the reduce method and max function
  int maxElement = numbers.reduce(max);  // Output: 8

  print('Maximum Element: $maxElement');
}
