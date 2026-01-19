void main() {
  //A way to declare a variable with specifying its type
  var a = 20;
  print(a);
  print(a.runtimeType);

  var b = "Mansukh";
  print(b);
  print(b.runtimeType);

  var c = true;
  print(c);
  print(c.runtimeType);
  print("");

  //A way to declare a variable without specifying its type
  Object x;
  x = 10;
  print(x);
  print(x.runtimeType);
  print("");

  x = "Haresh";
  print(x);
  print(x.runtimeType);
  print("");

  x = false;
  print(x);
  print(x.runtimeType);
  print("");

  x = 10.23232;
  print(x);
  print(x.runtimeType);
}
