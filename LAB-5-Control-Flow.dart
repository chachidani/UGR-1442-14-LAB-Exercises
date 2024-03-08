void main() {
  double operand1 = 10;
  double operand2 = 5;
  String operation = '+';

  double result;

  switch (operation) {
    case '+':
      result = operand1 + operand2;
      break;
    case '-':
      result = operand1 - operand2;
      break;
    case '*':
      result = operand1 * operand2;
      break;
    case '/':
      if (operand2 != 0) {
        result = operand1 / operand2;
      } else {
        print("Error: Division by zero is not allowed.");
        return;
      }
      break;
    default:
      print("Error: Invalid operator.");
      return;
  }

  print("Result: $result");
}
