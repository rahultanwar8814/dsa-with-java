//   // Now you have a binary tree with the following structure:
//   //        5
//   //       / \
//   //      3   8
//   //     / \
//   //    1   4
class TreeNode {
  int? data;
  TreeNode? leftNode;
  TreeNode? rightNode;
  TreeNode(this.data);

  void insertValue(int value) {
    if (value < data!) {
      if (leftNode == null) {
        leftNode = TreeNode(value);
      } else {
        leftNode!.insertValue(value);
      }
    } else {
      if (rightNode == null) {
        rightNode = TreeNode(value);
      } else {
        rightNode!.insertValue(value);
      }
    }
  }

  void search(int value) {
    if (data == null) {
      print('Nothing to search');
      return;
    } else {
      if (data == value) {
        print("Value found : $value");
        return;
      }
      if (value < data!) {
        if (leftNode != null) {
          leftNode!.search(value);
        } else {
          print("value not found : $value");
        }
      } else {
        if (rightNode != null) {
          rightNode!.search(value);
        } else {
          print("value not found : $value");
        }
      }
    }
  }

  void displayNode() {
    if (leftNode != null) {
      leftNode!.displayNode();
    }
    print(this.data);
    if (rightNode != null) {
      rightNode!.displayNode();
    }
  }

  TreeNode? deleteNode(TreeNode? root, int key) {
    if (root == null) return root;
    if (key < root.data!) {
      root.leftNode = deleteNode(root.leftNode, key);
    } else if (key > root.data!) {
      root.rightNode = deleteNode(root.rightNode, key);
    } else {
      if (root.leftNode == null) {
        return root.rightNode;
      } else if (root.rightNode == null) {
        return root.leftNode;
      }
      root.data = minValue(root.rightNode!);
      root.rightNode = deleteNode(root.rightNode, root.data!);
    }
    return root;
  }

  int minValue(TreeNode node) {
    int minv = node.data!;
    while (node.leftNode != null) {
      minv = node.leftNode!.data!;
      node = node.leftNode!;
    }
    return minv;
  }

  void displayTreeBYTreeRepresentation(
      String prefix, TreeNode? node, bool isLeft) {
    if (node != null) {
      print(prefix + (isLeft ? "├── " : "└── ") + node.data.toString());
      displayTreeBYTreeRepresentation(prefix + (isLeft ? "    " : "│   "),
          node.leftNode, false); // Corrected condition for left node
      displayTreeBYTreeRepresentation(prefix + (isLeft ? "    " : "│   "),
          node.rightNode, true); // Corrected condition for right node
    }
  }
}

void main(List<String> args) {
  TreeNode obj = TreeNode(10);
  obj.insertValue(20);
  obj.insertValue(30);
  obj.insertValue(4);
  obj.insertValue(6);
  obj.insertValue(100);

  // Display original tree
  print('Original Tree:');
  obj.displayTreeBYTreeRepresentation('', obj, false);

  // Delete node with value 20
  obj.deleteNode(obj, 20);

  // Display tree after deletion
  print('\nTree after deletion:');
  obj.displayNode();
  obj.displayTreeBYTreeRepresentation('', obj, false);
}
