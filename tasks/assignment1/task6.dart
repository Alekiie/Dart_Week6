import 'dart:io';

void main() {
  stdout.write("Enter a list of numbers separated by space: ");
  String input = stdin.readLineSync()!;
  
  List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();
  
  int? largestNumber = findLargestNumber(numbers);
  
  if (largestNumber != null) {
    print("The largest number in the list is: $largestNumber");
  } else {
    print("No numbers were provided.");
  }
}

int? findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    return null;
  }
  
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  
  return largest;
}
