/*
* Private instance Variable
- Use '_' before variable name
- Private instance variable exists at the library.
 */

library;

class A {
  final _a = 10;

  void display() {
    print("Private variable = $_a");
  }
}
