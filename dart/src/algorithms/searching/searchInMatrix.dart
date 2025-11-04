void main(List<String> args) {
  List<List<int>> listOfValues = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  searchMatrix(listOfValues, 9);
}

searchMatrix(List<List<int>> matrix, key) {
  bool isContain = false;
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == key) {
        isContain = true;
        break;
      }
    }
    if (isContain) {
      break;
    }
  }

  if (isContain) {
    print("This Matrix Contains:$key ");
  } else {
    print("This Matrix Does Not value");
  }

  return isContain;
}
