main() {
  var a = [1, 2];
  var b = [1, 2, 3, 4, 8, 3, 34];
  print(interSection(a, b));
}

interSection(arr, arr2) {
  List<dynamic> list = [];
  for (int i = 0; i < arr.length; i++) {
    if (isContain(arr2, arr[i])) {
      list.add(arr[i]);
    }
  }
  return list;
}

isContain(arr, value) {
  bool isContain = false;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == value) {
      isContain = true;
      break;
    }
  }
  return isContain;
}
