void main() {
  List a = [10, 20, 30, 40, 50, 60];
  print(a);

  a.remove(30);
  print(a);

  a.removeAt(4);
  print(a);

  a.removeLast();
  print(a);

  print(a.first); //for print first value of list
  print(a.last); // for print last value of list

  //for single value add in list
  a.add(70);
  print(a);

  //for multiple value add in list
  a.addAll([80, 90, 100]);
  print(a);

  //insert value in list its particular index
  a.insert(1, 5);
  print(a);

  List b = [23, 65, 4, 100, 2, 1, 90];
  b.sort();
  print(b);

  b.shuffle();
  print(b);

  print(b.length);
  print(b.reversed);
  print(b.runtimeType);
  print(b.isEmpty);
  print(b.isNotEmpty);
  b.clear();
  print(b);
}
