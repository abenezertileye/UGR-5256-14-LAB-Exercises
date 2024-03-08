import 'dart:io';

void main() {
//EXERCISE 3
  print('Enter a phrase or word: ');
  String str = stdin.readLineSync()!;
  String reversed = reverse(str);
  print(reversed);
}

String reverse(str) {
  return str.split('').reversed.join('');
}
