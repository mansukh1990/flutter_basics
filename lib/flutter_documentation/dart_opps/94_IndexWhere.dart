/*
IndexWhere
  - The first index in the list satisfies the provided test.
 */
void main() {
  var nameList = ["Rahul", "Mansukh", "Haresh", "jignesh"];

  int result = nameList.indexWhere((element) => element.startsWith("j"));

  print(result);
}
