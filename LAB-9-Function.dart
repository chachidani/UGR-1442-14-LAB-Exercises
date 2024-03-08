void main() {
  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);
  print("Reversed string: $reversedString");
}

String reverseString(String inputString) {
  String reversed = '';
  for (int i = inputString.length - 1; i >= 0; i--) {
    reversed += inputString[i];
  }
  return reversed;
}
