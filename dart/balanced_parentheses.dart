bool isBalanced(String input) {
  List<String> stack = [];
  Map<String, String> parenthesesMap = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    if (char == '(' || char == '{' || char == '[') {
      stack.add(char);
    } else if (char == ')' || char == '}' || char == ']') {
      if (stack.isEmpty || stack.last != parenthesesMap[char]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  String input1 = "((()))";
  String input2 = "()[]{}";
  String input3 = "({[}])";
  print("Is input1 balanced? ${isBalanced(input1)}");
  print("Is input2 balanced? ${isBalanced(input2)}");
  print("Is input3 balanced? ${isBalanced(input3)}");
}
