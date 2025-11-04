main() {
  List<int> array = [1, 2, 3, 4, 5];
  displayArray(array);
}

displayArray(arr) {
  int iMaxSum = 0;
  for (int index = 0; index < arr.length; index++) {
    for (int j = 0; j < arr.length - index; j++) {
      List<int> shortedArray = displayArrayFromTo(arr, j, j + index);
      int sumIs = sumOfArray(shortedArray);
      if (sumIs > iMaxSum) {
        iMaxSum = sumIs;
      }
    }
  }
  print(iMaxSum);
}

displayArrayFromTo(List<int> array, start, end) {
  List<int> result = [];
  if (array.isEmpty) {
    print("Please set a valid array");
  } else {
    for (int i = start; i <= end; i++) {
      result.add(array[i]);
    }
  }
  // print(result);
  return result;
}

sumOfArray(List<int> arrayToadd) {
  int sumOfArray = 0;
  for (int i = 0; i < arrayToadd.length; i++) {
    sumOfArray = sumOfArray + arrayToadd[i];
  }
  // print("Sum Of Array Is : $sumOfArray");
  return sumOfArray;
}
