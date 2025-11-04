int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;
  
  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);
    
    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1; 
}

void main() {
  List<int> numbers = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  int target = 12;
  int result = binarySearch(numbers, target);
  if (result != -1) {
    print('Element $target found at index $result');
  } else {
    print('Element $target not found in the list');
  }
}
