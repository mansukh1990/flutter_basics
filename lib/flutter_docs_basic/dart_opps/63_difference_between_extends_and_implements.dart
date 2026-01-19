/*
 - In the concept of Inheritance we use extends keyword

extends -> class A{}
           class B extends A{
           }
 - Using implement keyword we can create an interface.
 implements -> class A{}
               class B{}
               class C implements A,B{
                }
 */

void main() {}

// extends
class A {
  void method1() {}

  void method2() {}
}

class B extends A {
  @override
  void method1() {}
}

class C {
  void method3() {}

  void method4() {}
}

class D implements C, B {
  @override
  void method3() {}

  @override
  void method4() {}

  @override
  void method1() {}

  @override
  void method2() {}
}
