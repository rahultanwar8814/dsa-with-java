public class InsertionSort {
      public static void main(String[] args) {

        int[] list = {23, 54, 2, 65, 1, 9, 98, 23, 77, 90, 3, 41};

        insertionSort(list);

        System.out.println("Sorted array (Ascending):");
        for (int i = 0; i < list.length; i++) {
            System.out.print(list[i] + " ");
        }
    }

    public static void insertionSort(int[] arr) {

        for (int i = 1; i < arr.length; i++) {

            int key = arr[i];
            int j = i - 1;

            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j]; // shift right
                j--;
            }

            arr[j + 1] = key; // insert at correct position
        }
    }
}
