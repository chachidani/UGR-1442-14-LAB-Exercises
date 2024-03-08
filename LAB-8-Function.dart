void main() {
  int startNumber = 1;
  int endNumber = 20;

  for (int num = startNumber; num <= endNumber; num++) {
    if (isPrime(num)) {
      print("$num is prime.");
    }
  }
}

bool isPrime(int num) {
  if (num < 2) {
    return false;
  }

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
