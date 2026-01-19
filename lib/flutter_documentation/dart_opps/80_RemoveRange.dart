/*
RemoveRange
  - Removes a range of elements from the list.
 */
void main() {
  final numList = [1, 2, 3, 4, 5, 6, 7, 8];
  final numList1 = [1, 2, 3, 4, 5, 6, 7, 8];
  final numList2 = [1, 2, 3, 4, 5, 6, 7, 8];
  numList.removeRange(3, 5);
  numList1.removeRange(3, 3);
  numList2.removeRange(0, 7);
  print(numList);
  print(numList1);
  print(numList2);
}
