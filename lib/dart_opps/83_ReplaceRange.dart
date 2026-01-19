/*
ReplaceRange
  - Replaces a range of elements with the elements of replacements.
    Removes the objects in the range from start to end,
    then inserts elements of replacements at start.
 */

void main() {
  final numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final numList1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final newList = [11, 12, 13, 14];
  final newList1 = [11, 12, 13, 14];

  numList.replaceRange(1, 2, newList);
  numList1.replaceRange(1, 1, newList1);

  print(numList);
  print(numList1);
}
