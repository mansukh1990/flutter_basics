/*
Syntax 1 : typedef return_type function_name(parameters);
Syntax 2: typedef variable_name = return_type function_name;
 */

typedef Temp = Function(int a);

First(int a) {
  print("First Function : ${a + 1}");
}

Second(int a) {
  print("Second Function : ${a + 2}");
}

void main() {
  Temp x = First;
  x(5);

  x = Second;
  x(5);
}
