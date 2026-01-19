void main() {
  /*
  You can pass a function as a parameter to another function
   */
  student("Hello", name);
  var x = marks();
  print(x(10, 20, 30));
}

Function name = (String s) {
  return s;
};

void student(String a, Function n) {
  print("$a ${n("Mansukh")}");
}

//return a function from another function
Function marks() {
  num(int a, int b, int c) {
    return a + b + c;
  }

  return num;
}
