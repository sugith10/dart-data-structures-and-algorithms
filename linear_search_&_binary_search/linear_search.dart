void main() {
  List<int> numbers = [10, 20, 30, 35, 40, 50];
  
  void find(List<int> numbers, int a) {
    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == a) {
        print('Element found in the list.');
        return;
      }
    }
    print('Element not found.');
  }

  find(numbers, 20);
}
