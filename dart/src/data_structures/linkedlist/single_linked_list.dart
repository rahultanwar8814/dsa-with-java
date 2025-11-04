class LinkedList {
  int? data;
  LinkedList? node;
  LinkedList(this.data);
}

class GeneratedLinkedList {
  LinkedList? node;
  GeneratedLinkedList() {
    node = null;
  }

  void insertElement(int value) {
    if (node == null) {
      node = LinkedList(value);
      print("Element successfully inserted");
    } else {
      LinkedList temp = node!;
      while (temp.node != null) {
        temp = temp.node!;
      }
      temp.node = LinkedList(value);
      print("Element successfully inserted");
    }
  }

  void deleteElement(int value) {
    if (node == null) {
      print("List is empty");
      return;
    }
    if (node!.data == value) {
      node = node!.node;
      print("Element $value successfully deleted");
      return;
    }
    LinkedList? temp = node;
    while (temp!.node != null && temp.node!.data != value) {
      temp = temp.node;
    }
    if (temp.node == null) {
      print("Element $value not found in the list");
    } else {
      temp.node = temp.node!.node;
      print("Element $value successfully deleted");
    }
  }

  void displayNode() {
    if (node == null) {
      print("There is nothing to display");
    } else {
      LinkedList? temp = node;
      while (temp != null) {
        print(temp.data!);
        temp = temp.node;
      }
    }
  }
}

void main() {
  GeneratedLinkedList obj = GeneratedLinkedList();
  obj.insertElement(1);
  obj.insertElement(2);
  obj.insertElement(3);
  obj.insertElement(12);
  print("Original List:");
  obj.displayNode();
  
  obj.deleteElement(3); // Deleting element with value 3
  print("\nList after deleting element 3:");
  obj.displayNode();
}
