void main() {
  var obj = B();
  obj.display();
}

class A {
  var x = 10;

  void display() {
    print("Super class X = $x");
  }
}

class B extends A {
  @override
  var x = 20;

  @override
  void display() {
    print(super.x);
    super.display();
  }
}
