main() {
  factorial(5);
}

factorial(int value) {
  var factorial = 1;
  for (int i = 1; i <= value; i++) {
    factorial = factorial * i;
  }
  print(factorial);
}
