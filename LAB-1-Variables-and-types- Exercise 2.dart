import 'dart:io';

void main() {
//EXERCISE 2
  print('enter distance in meter:');
  int seedOfLight = 299792458;
  double distance = double.parse(stdin.readLineSync()!);
  double time = distance / seedOfLight;
  print('$time seconds');
}
