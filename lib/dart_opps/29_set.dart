void main() {
  /*
   Set
   - A set in Dart is an unordered collection of unique items.
   */

  // var set1 = {'bus', 'truck', 'car'};
  // Set set1 = {'bus', 'truck', 'car'};
  Set set1 = {1, 2, 3};

  set1.add(10);
  set1.add(20);

  print(set1.runtimeType);

  for (int i in set1) {
    print(i);
  }

  Set set2 = const {10, 20, 30};
  //set2.add(40);
  for (int i in set2) {
    print(i);
  }
}
