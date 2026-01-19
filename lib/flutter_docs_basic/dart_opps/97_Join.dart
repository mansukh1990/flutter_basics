/*
Join
  - Converts each element to a String and concatenates the strings.
 */
void main() {
  var numList = [10, 20, 30, 40, 50, 50];
  String result = numList.join("+");
  String result1 = numList.join(", ");
  String result2 = numList.join(" ");

  print(result);
  print(result1);
  print(result2);
}
