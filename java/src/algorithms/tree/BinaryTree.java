class Node {

    int  data;
    Node left;
    Node right;

    Node(int value) {
        data = value;
    }
}

public class BinaryTree {

    // Insert node in BST
    static Node insert(Node root, int value) {

        // Create new node if empty
        if (root == null) {
            return new Node(value);
        }

        // Go left
        if (value < root.data) {
            root.left = insert(root.left, value);
        }

        // Go right
        else {
            root.right = insert(root.right, value);
        }

        return root;
    }

    // Inorder traversal
    static void inorder(Node root) {

        if (root == null) {
            return;
        }

        inorder(root.left);

        System.out.print(root.data + " ");

        inorder(root.right);
    }

    public static void main(String[] args) {

        int[] arr = {1, 6, 2, 90, 4, 77};

        Node root = null;

        // Insert all elements
        for (int value : arr) {
            root = insert(root, value);
        }

        System.out.println("Inorder Traversal:");

        inorder(root);
    }
}