void main() {
  var a = 10;
  print(a is int);
  print(a is String);

  var b = "Mansukh";

  print(b is int);
  print(b is String);

  print(b is! String);
  print(b is! int);

  print("is operator = ${a is int}");
  print("is! Operator = ${a is! int}");
}
