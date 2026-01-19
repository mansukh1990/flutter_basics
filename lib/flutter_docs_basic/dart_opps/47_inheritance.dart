/*
 Single Inheritance
 */
void main() {
  var obj = B();
  obj.display_b();
  obj.display_a();
  print(obj.a);
  print(obj.b);
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
