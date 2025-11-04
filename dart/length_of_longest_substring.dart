main() {
  Solution obj = Solution();
  print(obj.lengthOfLongestSubstring("abbcfr"));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    int maxLength = 0;
    int maxLongSubString = 0;
    String last = '';
    for (int j = 0; j < s.length; j++) {
      last = '';
      maxLength = 0;
      for (int i = j; i < s.length; i++) {
        if (!isContaint(last, s[i])) {
          maxLength++;
          last = last + s[i];
        } else {
          break;
        }
      }
      if (maxLength > maxLongSubString) {
        maxLongSubString = maxLength;
      }
    }

    return maxLongSubString;
  }

  bool isContaint(String arr, String value) {
    bool isContain = false;
    for (int i = 0; i < arr.length; i++) {
      if (value == arr[i]) {
        isContain = true;
        break;
      }
    }
    return isContain;
  }
}
