main() {
  for (int j = 0; j <= 10; j++) {
    print(febonacciseries(j));
  }
}

febonacciseries(int i) {
  if (i <= 1) {
    return i;
  } else {
    return febonacciseries(i - 1) + febonacciseries(i - 2);
  }
}
