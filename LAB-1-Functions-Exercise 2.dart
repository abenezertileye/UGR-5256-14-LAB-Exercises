void main() {
  //EXERCISE 2
  int start = 1;
  int end = 50;

  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print('$i is a prime number');
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
