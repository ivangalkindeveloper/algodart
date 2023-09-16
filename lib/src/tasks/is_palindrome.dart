bool isPalindrome(String s) {
  s = s.replaceAll(" ", "").toLowerCase();
  return s.split("").toString() == s.split("").reversed.toString();
}

bool isPalindromeRecursive(String s) {
  if (s.isEmpty || s.length == 1) {
    return true;
  }

  final String start = s[0];
  final String end = s[s.length - 1];

  if (start != end) {
    return false;
  }

  return isPalindromeRecursive(s.substring(
    1,
    s.length - 2,
  ));
}
