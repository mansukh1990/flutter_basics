void main() {
  /*
  4 type of functions
  1.No arguments and no return type
  2.With arguments and no return type
  3.No arguments and with return type
  4.With arguments and with return type
   */
  add();
  add1(10, 30);
  print(add2());
  print(add3(30, 30));
}

//No arguments and no return type
void add() {
  var a = 10, b = 20;
  print(a + b);
}

//With arguments and no return type
void add1(var a, var b) {
  print(a + b);
}

//No arguments and with return type
int add2() {
  var a = 10, b = 40;
  var c = a + b;
  return c;
}

//With arguments and with return type
int add3(var a, var b) {
  var c = a + b;
  return c;
}
