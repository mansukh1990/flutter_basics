void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  List<int> filteredListEven =
      numList.where((element) => element.isEven).toList();

  List<int> filteredListOdd =
      numList.where((element) => element.isOdd).toList();

  List<int> filteredList1 = numList.where((element) => element > 5).toList();

  List<int> filteredList2 = numList.where((element) => element < 5).toList();

  print(filteredListEven);
  print(filteredListOdd);
  print(filteredList1);
  print(filteredList2);
}
