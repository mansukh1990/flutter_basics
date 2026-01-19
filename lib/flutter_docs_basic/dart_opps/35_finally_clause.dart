/*
 - To Ensure that some code runs whether or not an exception is thrown ,use finally clause.
 */

void main() {
  try {
    int x = 10 ~/ 0;
    print("x = $x");
  } catch (e) {
  //  print("Exception $e");
  } finally {
    print("Finally Clause");
  }
}
