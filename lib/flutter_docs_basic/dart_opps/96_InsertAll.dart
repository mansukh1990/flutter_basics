/*
InsertAll
  - Inserts all objects of iterable at position index in this list.
 */
void main() {
  var numList = [12, 212, 12, 12];

  var insertItem = [10, 23,43,434,424];

  numList.insertAll(2, insertItem);
  print(numList);
}
