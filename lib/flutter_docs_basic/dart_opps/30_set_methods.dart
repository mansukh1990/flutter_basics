import 'dart:collection';

void main() {
  Set set1 = {10, 20, 30, 5, 1, 100, 33};

  print(set1);

  set1.add(85);
  print(set1);

  set1.addAll({2, 44});
  print(set1);

  set1.remove(30);
  print(set1);

  print(set1.length);
  print(set1.runtimeType);
  print(set1.isEmpty);
  print(set1.isNotEmpty);
  set1.clear();
  print(set1);

  // An unordered has-table-based Set implementation

  Set hash1 = HashSet();

  hash1.addAll([10, 20, 30]);
  print(hash1);
}
