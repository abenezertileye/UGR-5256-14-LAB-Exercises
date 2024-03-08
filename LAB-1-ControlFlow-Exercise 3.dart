import 'dart:io';

void main() {
  //EXERCISE 3

  print('Enter first number: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Enter operation(+ or - or * or /): ');
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      print(num1 / num2);
      break;
    default:
      print('Invalid operation');
  }
}
