/*
Hierarchical Inheritance
 */

void main() {
  var objB = B();
  var objC = C();
  objB.display_a();
  objC.display_a();
}

class A {
  var a = 10;

  void display_a() {
    print(a);
  }
}

class B extends A {
  var b = 20;

  void display_b() {
    print(b);
  }
}

class C extends A {
  var c = 30;

  void display_c() {
    print(c);
  }
}
