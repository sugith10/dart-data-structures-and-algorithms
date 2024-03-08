In Dart, the `int` type represents integer numbers, and it comes with several methods and properties that you can use. Here are some commonly used methods:

1. **abs():**
   - Returns the absolute value of the integer.

   ```dart
   int number = -5;
   int absValue = number.abs();  // absValue will be 5
   ```

2. **ceil():**
   - Returns the smallest integer greater than or equal to the given integer.

   ```dart
   double fractionalNumber = 3.14;
   int ceilingValue = fractionalNumber.ceil();  // ceilingValue will be 4
   ```

3. **floor():**
   - Returns the largest integer less than or equal to the given integer.

   ```dart
   double fractionalNumber = 3.14;
   int floorValue = fractionalNumber.floor();  // floorValue will be 3
   ```

4. **round():**
   - Returns the integer that is closest to the given integer. Rounds to the nearest integer.

   ```dart
   double fractionalNumber = 3.5;
   int roundedValue = fractionalNumber.round();  // roundedValue will be 4
   ```

5. **toDouble():**
   - Converts the integer to a double.

   ```dart
   int integerNumber = 42;
   double doubleNumber = integerNumber.toDouble();  // doubleNumber will be 42.0
   ```

6. **toString():**
   - Converts the integer to a string.

   ```dart
   int number = 123;
   String numberString = number.toString();  // numberString will be "123"
   ```

7. **isEven:**
   - Returns `true` if the integer is even, otherwise `false`.

   ```dart
   int evenNumber = 8;
   bool isEven = evenNumber.isEven;  // isEven will be true
   ```

8. **isOdd:**
   - Returns `true` if the integer is odd, otherwise `false`.

   ```dart
   int oddNumber = 7;
   bool isOdd = oddNumber.isOdd;  // isOdd will be true
   ```

These are just a few examples of the methods available for the `int` type in Dart. The Dart language provides various other methods and properties to work with integer values.