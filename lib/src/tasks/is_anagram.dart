bool isAnagram(
  String s1,
  String s2,
) {
  s1 = s1.replaceAll(" ", "");
  s2 = s2.replaceAll(" ", "");
  return s1.split("").toString() == s2.split("").toString();
}
