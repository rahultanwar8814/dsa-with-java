main() {
  SingleLinkedList newLinkedList = SingleLinkedList();
  newLinkedList.insertValue(10);
  newLinkedList.insertValue(20);
  newLinkedList.insertValue(30);
  newLinkedList.insertValue(40);
  newLinkedList.displayLinkedList();
  print(newLinkedList.searchData(99));
}

class LinkedList {
  dynamic data;
  LinkedList? node;
  LinkedList(this.data);
}

class SingleLinkedList {
  LinkedList? initialNode;
  SingleLinkedList() {
    initialNode = null;
  }

  insertValue(data) {
    LinkedList node = LinkedList(data);
    if (initialNode == null) {
      initialNode = node;
    } else {
      LinkedList? newNode = initialNode;
      while (newNode?.node != null) {
        newNode = newNode?.node;
      }
      newNode!.node = node;
    }
  }

  displayLinkedList() {
    LinkedList displayLinkedList = initialNode!;
    while (displayLinkedList.node != null) {
      print(displayLinkedList.data);
      displayLinkedList = displayLinkedList.node!;
    }
    print(displayLinkedList.data);
  }

  bool searchData(value) {
    bool isContains = false;
    LinkedList displayLinkedList = initialNode!;
    while (displayLinkedList.node != null) {
      print(displayLinkedList.data);
      if (displayLinkedList.data == value) {
        isContains = true;
        break;
      }
      displayLinkedList = displayLinkedList.node!;
    }
    if (displayLinkedList.data == value) {
      isContains = true;
    }
    return isContains;
  }
}
