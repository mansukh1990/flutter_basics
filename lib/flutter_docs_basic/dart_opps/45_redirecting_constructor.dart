/*
 Redirecting Constructor
  - Sometimes a constructor's only purpose is to redirect to another constructor in same class.
  - A redirecting constructor's body is empty,with the constructor call appearing after a colon(:).
  Syntax : class Display{
                 Display(this.x,this.y);
                 Display.re_const():this(2,4)
                 }
 */

void main() {
  var obj = Display.named();
}

class Display {
  var x;
  var y;

  Display(this.x, this.y) {
    print("x = $x, y = $y");
  }

  Display.named() : this(10, 20);
}
