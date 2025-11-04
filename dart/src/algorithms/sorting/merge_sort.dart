List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {return arr;}
  final int mid = arr.length ~/ 2;
  final List<int> left = mergeSort(arr.sublist(0, mid));
  final List<int> right = mergeSort(arr.sublist(mid));
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;
  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  return result;
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  print('Original Array: $arr');
  List<int> sortedArr = mergeSort(arr);
  print('Sorted Array: $sortedArr');
}
