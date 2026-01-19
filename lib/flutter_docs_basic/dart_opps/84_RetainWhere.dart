/*
RetainWhere
  - Removes all objects from a list that fail to satisfy the test.
 */

void main() {
  final numList = [1, 2, 3, 4, 5, 6];

  numList.retainWhere((element) => element >= 3);
  print(numList);
}
