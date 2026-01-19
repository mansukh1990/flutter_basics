/*
 * Static Variable
 * Static Method
   - Static method(class methods) don't operate on an instance,and thus don't have access to this
   - They do, however, have access to static variables.
 */

void main() {
  // var obj = A();
  // print(obj.x);
  A.display();
}

class A {
  int x = 10;
  static var y = 20;

  static void display() {
    print(y);
  }
}
