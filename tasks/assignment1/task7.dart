void main() {
  try {
    // Attempting a division by zero to cause an exception
    int result = 10 ~/ 0; // This will cause an IntegerDivisionByZeroException
    print("Result: $result"); // This line will not be executed if an exception occurs
  } catch (e) {
    // Catching the exception and outputting an error message
    print("An error occurred: $e");
  }
}
