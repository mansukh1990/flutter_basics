/*
Reduce
  - Reduces a collection to a single value by iteratively combing elements
    of the collection using the provided function.
 */

void main() {
  var salaryList = [10000, 20000, 25000, 30000];
  var salaryList1 = [10000, 20000, 25000, 30000];

  final totalSalary = salaryList.reduce((value, element) => value + element);
  final totalSalary1 = salaryList1.reduce((value, element) => value - element);

  print(totalSalary);
  print(totalSalary1);
}
