/*
* Constructor
  - Declare a constructor by creating a function with the same name as its class.
  - Constructor name is similar to a class name.
  1. Default Constructor
     - The Default constructor has no arguments
     - if you don't declare a constructor,a default constructor is provided for you.
  2.Parameterized Constructor
    - If we pass some parameter then it is parameterized constructor.
  3.Named Constructor
    - Use a named constructor to implement multiple constructors for a class.
 */
void main() {
  var obj = A();
  var objB = B(10, 20);
  var objC = C.namedConst();
  var objT = C.type2();
}

// Default Constructor
class A {
  A() {
    print("Default Constructor....");
  }
}

//Parameterized Constructor
class B {
  B(int a, int b) {
    print("A = $a\nB = $b");
  }
}

//Named Constructor
class C {
  C.namedConst() {
    print("Named Constructor");
  }

  C.type2() {
    print("Type 2");
  }
}
