/*
 - when we don't know about the exception then use the catch clause.
 - you can specify one or two parameters to catch().
   The first is the exception object that was thrown , and second is the StackTraceObject.
 */

void main() {
  try {
    int x = 5 ~/ 0;
    print("x=$x");
  } catch (e, s) {
    print("Exception:$e");
    print(s);
  }
}
