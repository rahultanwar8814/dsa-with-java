// import 'dart:io';

void main(List<String> args) {
  List<List<int>>? matrix;
  matrix = [
    [1, 2],
    [3, 4],
    [5, 6]
  ];
  print(matrix);
  List<List<int>> matrixR1 = rotateMatrix(matrix);
  print(matrixR1);
  List<List<int>> matrixR2 = rotateMatrix(matrixR1);
  print(matrixR2);
  List<List<int>> matrixR3 = rotateMatrix(matrixR2);
  print(matrixR3);
  List<List<int>> matrixR4 = rotateMatrix(matrixR3);
  print(matrixR4);
}

rotateMatrix(List<List<int>> matrix) {
  List<List<int>> result = [];
  for (int col = 0; col < matrix[0].length; col++) {
    List<int> newList = [];
    for (int row = matrix.length - 1; row >= 0; row--) {
      var value = matrix[row][col];
      newList.add(value);
      // stdout.write("($row, $col)");
    }
    result.add(newList);
    // print("");
  }
  return result;
}
