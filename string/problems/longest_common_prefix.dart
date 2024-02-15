main() {


  
  // List<int> fibNums = Solution().fib(5);

  // print(fibNums);

  // List<int> names = [10,20,40,50,60];

//   List<String> strs = ["flower","flow","flight"];
//  print( Solution().longestCommonPrefix(strs));

  List<int> numbers = [10,11,23,23,23,53,64,66,69];

//  numbers = numbers.toSet().toList();

  // print(numbers);

}

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



  String longestCommonPrefix(List<String> strs) {
    strs.sort();
    String firstStr = strs[0];
    String lastStr = strs[strs.length - 1];
    int count = 0;
    while (count < firstStr.length && firstStr[count] == lastStr[count]) {
      count++;
    }
    if (count == 0) {
      return "";
    } else {
      return firstStr.substring(0, count);
    }
  }
}
