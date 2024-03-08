import 'dart:io';

void main() {
  print("Enter a number: ");
  String? userInput = stdin.readLineSync();
  
  try {
    if (userInput != null) {
      int parsedNumber = int.parse(userInput);
      print("The number is: $parsedNumber");
    } else {
      print("Invalid input! Please enter a valid number.");
    }
  } catch (error) {
    print("Invalid input! Please enter a valid number.");
  }
}
