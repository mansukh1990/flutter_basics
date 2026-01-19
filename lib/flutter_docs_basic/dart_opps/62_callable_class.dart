void main() {
  var obj = Student();
  print(obj(10, 20));
}

class Student {
  int call(int a, int b) {
    return (a + b);
  }
}
