main() {
  var a = [1, 2, 3, 4, 5, 6, 7, 6];
  var b = [1, 2, 3, 4, 8, 3, 34];
  print(union(a, b));
}

union(arr, arr2) {
  List<dynamic> list = [];
  for (int i = 0; i < arr.length; i++) {
    if (!isContain(list, arr[i])) {
      list.add(arr[i]);
    }
  }
  for (int j = 0; j < arr2.length; j++) {
    if (!isContain(list, arr2[j])) {
      list.add(arr2[j]);
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
