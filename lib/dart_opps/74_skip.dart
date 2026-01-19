void main() {
  List<int> numList = [22, 23, 44, 45, 76, 345, 67, 78, 98];

  List<int> filteredList = numList.skip(2).toList();

  print(filteredList);
}
