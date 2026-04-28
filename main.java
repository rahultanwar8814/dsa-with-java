public class main {

    public static void main(String[] args) {
        int[] list = {23, 54, 2, 65, 1, 9, 98, 23, 77, 90, 3, 41};
        quickSort(list, 0, list.length - 1);

        for (int i = 0; i < list.length; i++) {
            System.out.println(list[i]);
        }
    }

    public static void quickSort(int[] arr, int low, int high) {
        if (low < high) {
            int pivot = partition(arr, low, high);
            quickSort(arr, low, pivot - 1);
            quickSort(arr, pivot + 1, high); // FIXED
        }
    }

    public static int partition(int[] arr, int low, int high) {
        int pivot = arr[high];
        int k = low - 1;

        for (int i = low; i < high; i++) { // FIXED
            if (arr[i] < pivot) {
                k++;
                int temp = arr[i];
                arr[i] = arr[k];
                arr[k] = temp;
            }
        }

        k++;
        int temp = arr[high];
        arr[high] = arr[k];
        arr[k] = temp;

        return k;
    }
}
