void main() {
  List<int> list = [8, 2, 10, 12, 7, 0, 10, 8];

  List<int> allArea = [];
  for(int k = 0 ;  k < list.length; k++ ){
      allArea.add(calculateAreaFromSingleValue(list, k));
  }
  print("Calculated Area is: $allArea");
}
calculateAreaFromSingleValue(List<int> list, int initialPosition) {
  if (initialPosition > list.length - 1) {
    return 0;
  }
  int i = initialPosition;
  int j = initialPosition;
  int maxLength = list.length - 1;
  int calculateAreaFrom = list[initialPosition];
  int value = list[initialPosition];
  while (i > 0 || j < maxLength) {
    if (i > 0) {
      i--;
      if (list[i] >= list[initialPosition]) {
        value = value + calculateAreaFrom;
      } else {
        i = -1;
      }
    }
    if (j < maxLength) {
      j++;
      if (list[j] >= list[initialPosition]) {
        value = value + calculateAreaFrom;
      } else {
        j = maxLength + 1;
      }
    }
  }
  return value;
}
