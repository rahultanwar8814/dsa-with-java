class main {

    public static void main(String[] args) {
        int[] a = {12, 11, 13, 5, 6, 7};

        int[] sorted = sort(a);

        for (int num : sorted)
            System.out.print(num + " ");
    }

    public static int[] sort(int[] a) {
        if (a.length <= 1) return a;

        int mid = a.length / 2;

        int[] left = new int[mid];
        int[] right = new int[a.length - mid];

        for (int i = 0; i < mid; i++) left[i] = a[i];
        for (int i = mid; i < a.length; i++) right[i - mid] = a[i];

        left = sort(left);
        right = sort(right);

        return merge(left, right);
    }

    public static int[] merge(int[] left, int[] right) {
        int[] result = new int[left.length + right.length];

        int i = 0, j = 0, k = 0;

        while (i < left.length && j < right.length) {
            if (left[i] <= right[j]) result[k++] = left[i++];
            else result[k++] = right[j++];
        }

        while (i < left.length) result[k++] = left[i++];
        while (j < right.length) result[k++] = right[j++];

        return result;
    }
}
