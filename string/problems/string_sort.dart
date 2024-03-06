/// Sort Days using Bubble Sort in Dart
///
/// This example demonstrates the sorting of a list of days using the Bubble Sort algorithm.
/// The function `sortDays` takes a list of days and sorts them in alphabetical order.
///
/// Example:
/// ```dart
/// List<String> days = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];
/// Solutions().sortDays(days);
/// print(days); // Output: [friday, monday, saturday, sunday, thursday, tuesday, wednesday]
/// ```

class Solutions {
  void sortDays(List<String> days) {
    for (int i = 0; i < days.length - 1; i++) {
      for (int j = 0; j < days.length - 1; j++) {
        if (days[j].compareTo(days[j + 1]) > 0) {
          String temp = days[j];
          days[j] = days[j + 1];
          days[j + 1] = temp;
        }
      }
    }
  }
}

void main() {
  List<String> days = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'];
  Solutions().sortDays(days);
  print(days); 
}
