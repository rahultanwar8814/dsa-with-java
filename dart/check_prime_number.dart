main() {
  isPrime(11);
}

isPrime(int value) {
  bool isPrime = true;
  for (int i = 2; i <= value ~/ 2; i++) {
    print(i);
    if (value % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print("This is a prime number:$value");
  } else {
    print("The is not a prime number:$value");
  }
}
