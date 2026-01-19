/*
Contains
 - Returns true if the collection contains an element equal to the element.
 */
void main() {
  List<int> numList = [2, 4, 5, 12, 43, 54, 67, 54];

  bool isChecked = numList.contains(5);
  bool isChecked1 = numList.contains(100);
  print(isChecked);
  print(isChecked1);

  String details = "My name is mansukh";
  bool isDetailsChecked = details.contains("name");
  print(isDetailsChecked);
}
