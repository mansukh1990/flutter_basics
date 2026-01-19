void main() {
  //var = Var variable once assigned,then type can not change.
  //dynamic = Dynamic variable type can change over time.

  var a = 10;
  a = 20;

  dynamic b = 20;
  print(b);
  print(b.runtimeType);
  print("");

  b = "Mansukh";
  print(b);
  print(b.runtimeType);
}
