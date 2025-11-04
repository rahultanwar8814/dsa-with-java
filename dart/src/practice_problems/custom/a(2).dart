main() {
  var arr = ["a", "b", "c", "d", "e", "f"];
  for (int i = 0; i < arr.length ~/ 2; i++) {
    try {
      var temp = arr[i];
      var lastIndex = arr.length -( i+1);
      arr[i] = arr[lastIndex];
      arr[lastIndex] = temp;
    } catch (e) {
      print("Index Error: $i");
    }
  }
  print(arr);
}
