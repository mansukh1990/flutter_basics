/*
SubList
  - Returns a new list containing the elements between the start and end.
 */
void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> filteredList = numList.sublist(2, 9);
  List<int> filteredList1 = numList.sublist(2);
  List<int> filteredList2 = numList.sublist(2, 2);
  print(filteredList);
  print(filteredList1);
  print(filteredList2);
}
