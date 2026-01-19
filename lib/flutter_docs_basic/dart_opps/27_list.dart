/*
  Lists - In Dart, arrays are the List objects and elements
          are ordered in sequence in a LIST.
          - Zero- based Indexing
          0 1 2 3......
          1. FIXED LENGTH LIST
          2.Growable List.
   */

void main() {
  //dynamic list
  List lst;
  lst = [10, 20, 30, 12.12];
  print(lst);
  print(lst[1]);
  print(lst[3]);
  lst[2] = 50.10; // for update value list of index
  print(lst);

  //add value
  lst.add(10.50);
  print(lst);

  //remove value
  lst.remove(20);
  print(lst);

  for (double i in lst) {
    print(i);
  }

  // integer list
  List<int> lst1 = [10, 20, 30];
  print(lst1);

  //string list
  List<String> lst2 = ["Mansukh", "Haresh", "Jignesh", "32"];
  print(lst2);

  //double list
  List<double> lst3 = [212, 8797, 8979];
  print(lst3);
}
