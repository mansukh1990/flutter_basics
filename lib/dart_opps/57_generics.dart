/*
 Generics
 - The Use of Generics makes type-safe collections.
 - Generics are often required for type-safety , but they have more benefits than just allowing your code to run:
    1. Property specifying generic types results in better-generated code.
    2.you can use Generics to reduce code duplication.
 */

void main() {
  List<int> list1;
  list1 = [];
  list1.add(2);
  list1.add(3);
  print(list1);
}
