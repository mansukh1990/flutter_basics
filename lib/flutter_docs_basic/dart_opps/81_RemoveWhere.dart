/*
RemoveWhere
  - Removes all objects from this list that satisfy the test.
 */
void main() {
  final numList = [1, 2, 3, 4, 5, 6, 7, 8];
  final numList1 = [1, 2, 3, 4, 5, 6, 7, 8];

  numList.removeWhere((element) => element > 3);
  numList1.removeWhere((element) => element < 3);
  print(numList);
  print(numList1);
}
