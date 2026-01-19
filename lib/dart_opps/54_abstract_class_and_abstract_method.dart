/*
Abstract Class
 - Use the abstract modifier to define an abstract class - a class that can't be instantiated.
 */

void main() {
  var obj = B();
  obj.display();
}

abstract class A {
  int x = 10;

  void display();

  void disp() {
    print(x);
  }
}

class B extends A {
  @override
  void display() {
    print("Abstract Class");
    print(x);
  }
}
