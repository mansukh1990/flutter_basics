/*
   - The instance method is based on the objects.
   - The static method is based on the class.
 */
void main() {
  var obj = A();
  obj.disp1();
  A.disp2();
}

class A {
  int x = 10;
  static int y = 20;

  void disp1() {
    //Instance Method
    print("Instance Method");
    print(x);
    print(y);
  }

  static void disp2() {
    //Static Method
    print("Static Method");
    print(y);
  }
}
