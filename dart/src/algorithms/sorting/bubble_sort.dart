main() {
  var list = [2, 1, 4, 5, 7, 45, 54, 643, 23, 11];
  print(bubbleShort(list));
}

bubbleShort(list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - 1 - i; j++) {
      if (list[j] < list[j + 1]) {
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}
