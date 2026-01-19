/*
 - It Has two use cases
   1. Declaring a non-nullable variable that's initialized after its declaration.
   2. Lazily initializing a variable.
 */

void main() {
  Sample obj = Sample();
  //obj.x;
}

class Sample {
  late int x = temp();
}

int temp() {
  print("Hello");
  return 5;
}
