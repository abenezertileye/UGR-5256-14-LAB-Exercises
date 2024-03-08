import 'dart:io';

void main() {
  print('Enter a number: ');

  try {
    String userInput = stdin.readLineSync()!;

    int number = int.parse(userInput);

    print('The number you entered is: $number');
  } catch (e) {
    print('Error: Invalid input. Please enter a valid number.');
  }
}
