void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    // Find the partition index such that elements smaller than the pivot are on the left
    // and elements greater than the pivot are on the right.
    int partitionIndex = partition(arr, low, high);
    print(arr);

    // Recursively sort the sub-arrays
    quickSort(arr, low, partitionIndex - 1);
    quickSort(arr, partitionIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  // Choose the rightmost element as the pivot
  int pivot = arr[high];

  // Index of the smaller element
  int i = low - 1;

  for (int j = low; j < high; j++) {
    // If the current element is smaller than or equal to the pivot
    if (arr[j] <= pivot) {
      // Swap arr[i] and arr[j]
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}

void main() {
  List<int> arr = [6,3,9,10,5,2,8];

  print("Original array: $arr");

  quickSort(arr, 0, arr.length - 1);

  print("Sorted array: $arr");
}
