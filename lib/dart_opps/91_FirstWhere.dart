/*
FirstWhere
  - Returns the first element that satisfies the given predicate test.
 */
void main() {
  var numList = [1, 2, 3, 4, 5, 6, 7, 8];

  var result = numList.firstWhere((element) => element < 5);
  var result1 = numList.firstWhere((element) => element > 5);

  print(result);
  print(result1);
}
