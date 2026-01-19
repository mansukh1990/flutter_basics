/*
LastIndexOf
  - The starting position of the last match pattern in this string.
    Finds a match of pattern by searching backward searching at start.
 */

void main() {
  var numList = [8, 4, 2, 6, 8, 0, 8, 7, 5];

  var index = numList.lastIndexOf(8,4);
  print(index);
}
