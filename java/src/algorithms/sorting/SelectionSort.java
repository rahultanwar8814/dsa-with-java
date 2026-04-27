public class SelectionSort {
     public static void main(String[] args) {

        int[] list = {23, 54, 2, 65, 1, 9, 98, 23, 77, 90, 3, 41};

        selectionSort(list);

        System.out.println("Sorted array (Ascending):");
        for (int i = 0; i < list.length; i++) {
            System.out.print(list[i] + " ");
        }
    }

    public static void selectionSort(int[] arr) {

        for (int i = 0; i < arr.length - 1; i++) {

            int minIndex = i;

            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }

            // Swap
            int temp = arr[minIndex];
            arr[minIndex] = arr[i];
            arr[i] = temp;
        }
    }
}
