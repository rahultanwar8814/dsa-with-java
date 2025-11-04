
int romanToInt(String s) {
  Map<String, String> roman = {};
  roman["I"] = "1";
  roman["V"] = "5";
  roman["X"] = "10";
  roman["L"] = "50";
  roman["C"] = "100";
  roman["D"] = "500";
  roman["M"] = "1000";
    String sRight = "";
  List<String> add = [];
  for (int i = s.length - 1; i >= 0; i--) {
    if (sRight == "") {
      add.add("+" + roman[s[i]]!);
      sRight = s[i];
    } else {
      String sLeft = s[i];
      int ileft = int.parse(roman[sLeft]!);
      int iRight = int.parse(roman[sRight]!);
      if (iRight > ileft) {
        add.add("-" + roman[s[i]]!);
        sRight = s[i];
      } else {
        add.add("+" + roman[s[i]]!);
        sRight = s[i];
      }
    }
  }
  int value = 0;
  print(add);
  add.forEach((element) {
    value = value + int.parse(element);
  });
  print(value);
  return value;
}
