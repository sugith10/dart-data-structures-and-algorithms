  /// Generate a list of Fibonacci numbers up to the nth term.
  ///
  /// Given an integer [n], this function generates a list of Fibonacci numbers
  /// up to the nth term. The Fibonacci sequence starts with 0 and 1, and each
  /// subsequent term is the sum of the two preceding terms.
  ///
  /// Example:
  /// ```dart
  /// Solution().fib(5); // Output: [0, 1, 1, 2, 3]
  /// ```

class Solution {
  List<int> fib(int n) {
    List<int> numbers = [];
    int a = 0, b = 1;
    for (int i = 0; i < n; i++) {
      numbers.add(a);
      int temp = a;
      a = b;
      b = temp + b;
    }
    return numbers;
  }
}

main() {
  Solution solution = Solution();

  List<int> fibonacciSequence = solution.fib(8);
  print("Fibonacci Sequence: $fibonacciSequence");
}
