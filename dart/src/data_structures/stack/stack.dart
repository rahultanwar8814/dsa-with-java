main() {
  List<int> list = [2, 3, 4, 5];
  push(int value) {
    list.add(value);
    print(list);
  }
  pop() {
    List<int> newList = [];
    if (list.isEmpty) {
      print("Cannot pop item from this list because it is empty");
    } else {
      for (int i = 0; i <= list.length - 2; i++) {
        newList.add(list[i]);
      }
      list = newList;
      // list.removeLast();
      print("Item is successfully poped from this list");
    }
  }
  pop();
  push(10);
}
