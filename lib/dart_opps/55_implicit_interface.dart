void main() {
  var obj = B();
  obj.display1();
  obj.display2();
  obj.display3();
  obj.display4();
}

class A {
  void display1() {
    print("Class A first method");
  }

  void display2() {
    print("Class A second method");
  }
}

class C {
  void display3() {
    print("Class C First Method");
  }
}

class D {
  void display4() {
    print("Class D First Method");
  }
}

class B implements A, C, D {
  @override
  void display1() {
    print("After implementation Class A first method");
  }

  @override
  void display2() {
    print("after implementation Class A Second method");
  }

  @override
  void display3() {
    print("After Implementation Class C First Method");
  }

  @override
  void display4() {
    print("After Implementation CLass D First Method");
  }
}
