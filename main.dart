class Node {
  int? data;
  Node? node;
  Node(this.data);
}

class GenrateLinkedList {
  Node? node;
  GenrateLinkedList() {
    node = null;
  }

  insertValue(int data) {
    if (node == null) {
      node = Node(data);
      return;
    } else {
      Node? temp=node;

      while (temp!.node != null) {
        temp = temp.node;
      }
      temp.node = Node(data);
    }
  }

  displayValue() {
    if (node == null) {
      print("Given Node is null");
      return;
    }
    Node? temp = node;
    while (temp != null) {
      print(temp.data);
      temp = temp.node;
    }
  }
}

main(){
  GenrateLinkedList obj = GenrateLinkedList();
  obj.insertValue(12);
  obj.insertValue(12);
  obj.insertValue(12);
  obj.insertValue(12);
  obj.insertValue(2);
  obj.displayValue();
  
}