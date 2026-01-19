/*
LastWhere
   -
 */

void main() {
  var numList = [10, 20, 30, 40, 50, 60, 70, 80];

  var result = numList.lastWhere((element) => element > 50);
  var result1 = numList.lastWhere((element) => element < 50);

  print(result);
  print(result1);
}
