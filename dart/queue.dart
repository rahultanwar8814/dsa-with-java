main() {
  List<int> list = [];
  push(int value) {
    list.add(value);
  }
  pop() {
    if (list.isEmpty) {
      print("List is empty can't  pop item");
    } else {
      List<int> newList = [];
      for (int i = 0; i < list.length - 1; i++) {
        newList.add(list[i + 1]);
      }
      list = newList;
      // list.removeAt(0);
    }
  }
  push(1);
  push(2);
  push(3);
  push(4);
  push(5);
  pop();
  pop();
  print(list);
}
