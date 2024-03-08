double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (error) {
    if (error is IntegerDivisionByZeroException) {
      print("Error: Division by zero is not allowed.");
    } else {
      print("An error occurred during division: $error");
    }
    return double.nan; // Return NaN as a signal for division error
  }
}

void main() {
  double num1 = 10;
  double num2 = 0;

  double result = divideNumbers(num1, num2);
  if (!result.isNaN) {
    print("Result: $result");
  }
}
