main() {
  Solution obj = Solution();
  print(obj.isValid("{(})"));
}

class Solution {
  bool isValid(String s) {
    List<String> list = [];
    Map<String, String> map = {"(": ")", "{": "}", "[": "]"};
    for (int i = 0; i < s.length; i++) {
      if (list.isEmpty) {
        if (s[i] == "(" || s[i] == "{" || s[i] == "[") {
          list.add(s[i]);
        } else {
          return false;
        }
      } else {
        if (map[list.last] == s[i]) {
          list.removeLast();
        } else {
          if (s[i] == "(" || s[i] == "{" || s[i] == "[") {
            list.add(s[i]);
          }else{
            break;
          }
        }
      }
    }
    print(list);
    return list.isEmpty;
  }
}
