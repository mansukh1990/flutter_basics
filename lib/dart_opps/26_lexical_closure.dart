/*
*Closure
  - A closure is a function object that has access to variables in its lexical scope,
    even when the function is used outside of its original scope.
 */
var a = 0;
void main() {
  print("Main fun = $a");

  void outer() {
    a = 5;
    print("Outer Fun = $a");
  }
  outer();
  demo();
}

void demo() {
  a = 20;
  print("Demo Fun = $a");
}
