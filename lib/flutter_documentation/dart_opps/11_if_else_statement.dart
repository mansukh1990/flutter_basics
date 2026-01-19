void main() {
  /*
  Syntax: simple
  if(test expression){
  statement
  }else{
  statement
  }
   */

  int a = 100;
  if (a == 10) {
    print("true");
  } else {
    print("false");
  }
  /*
  Syntax:Nested
  if(expression){
  statement
  }else if(expression){
  statement
  }else if(expression){
  statement
  }else{
  statement
  }
   */
  if (a < 10) {
    print("Less than 10.");
  } else if (a < 20) {
    print("Less than 20.");
  } else if (a < 30) {
    print("Less than 30");
  } else if (a < 40) {
    print("Less tha 40");
  } else {
    print("Not valid number");
  }
}
