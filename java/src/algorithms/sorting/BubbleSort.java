public class BubbleSort {
    public static void main(String[] args) {
        int[] array = {23, 1, 65, 7, 43, 99, 10, 89, 12};

        int[] sortedArray = bubbleSort(array);

        for (int k = 0; k < sortedArray.length; k++) {
            System.out.println(sortedArray[k]);
        }
    }

    public static int[] bubbleSort(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {
            for (int j = 0; j < arr.length - 1 - i; j++) {
                if (arr[j] > arr[j + 1]) {
                    int tmp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = tmp;
                }
            }
        }
        return arr;
    }
}