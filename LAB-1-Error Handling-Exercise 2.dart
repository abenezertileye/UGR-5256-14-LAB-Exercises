double divideNumbers(double dividend, double divisor) {
  if (divisor == 0) {
    throw Exception('Division by zero is not allowed');
  }
  return dividend / divisor;
}

void main() {
  double dividend = 10;
  double divisor = 0;

  try {
    double result = divideNumbers(dividend, divisor);
    print('Result of division: $result');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
