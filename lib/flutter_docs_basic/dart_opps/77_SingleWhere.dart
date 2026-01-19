/*
SingleWhere
  - Returns the single element that satisfies the test.
 */

void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7];

  int result = numList.singleWhere((element) => element > 5 && element < 7);

  print(result);
}
