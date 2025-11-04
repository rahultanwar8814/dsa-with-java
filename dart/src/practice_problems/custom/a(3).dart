main() {
  var data = [1, 2, 3, 4, 5, 6, 7, 6];
  for (int i = 0; i < data.length; i++) {
    var count = 0;
    for (int j = i+1; j < data.length; j++) {
      if (data[i] == data[j]) {
        count++;
      }
    }
    if (count > 0) {
      print("This value is repeated: ${data[i]}");
    }
  }
}
