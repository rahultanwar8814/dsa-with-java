// [1]
// [1, 1]
// [1, 2, 1]
// [1, 3, 3, 1]
// [1, 4, 6, 4, 1]
main() {
  List<int> lastArray = [1];
  for (int i = 0; i < 6; i++) {
    List<int> returnArry = triangle(i, lastArray);
    lastArray = returnArry;
    print(returnArry);
  }
}

triangle(int size, List<int>? lastArray) {
  List<int> arr = [];
  for (int j = 0; j <= size; j++) {
    if (j == 0) {
      arr.add(1);
    } else if (j == size) {
      arr.add(1);
    } else {
      int valueIs = lastArray![j - 1] + (lastArray[j]);
      arr.add(valueIs);
    }
  }
  return arr;
}

/*solutoin in function*/ 
// // [1]
// // [1, 1]
// // [1, 2, 1]
// // [1, 3, 3, 1]
// // [1, 4, 6, 4, 1]
// main() {
//   pascals_triangle(6);
// }

// pascals_triangle(int length) {
//   List<int> lastArray = [1];
//   for (int size = 0; size < length; size++) {
//     List<int> arr = [];
//     for (int j = 0; j <= size; j++) {
//       if (j == 0) {
//         arr.add(1);
//       } else if (j == size) {
//         arr.add(1);
//       } else {
//         int valueIs = lastArray[j - 1] + (lastArray[j]);
//         arr.add(valueIs);
//       }
//     }
//     List<int> returnArry = arr;
//     lastArray = returnArry;
//     print(returnArry);
//   }
// }
