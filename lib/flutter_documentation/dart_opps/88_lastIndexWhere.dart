/*
lastIndexWhere
  - The last index in the list that satisfies the provided test.
 */

void main() {
  var numList = [10, 20, 30, 40, 50, 60, 70, 80];

  var result = numList.lastIndexWhere((element) => element < 50);
  var result1 = numList.lastIndexWhere((element) => element < 20);
  var result2 = numList.lastIndexWhere((element) => element > 20);

  print(result);
  print(result1);
  print(result2);
}
