/*
* Constant Constructor
* - Define a constant constructor and make sure that all instance variables are final.
    Syntax : class Display{
                 final int x;
                     const Display(this.x,....);
                     }
 */
void main() {
  var obj1 = Display(10, 20);
  var obj2 = const Display(10, 20);

  print(obj1 == obj2);
}

class Display {
  final int x;
  final int y;

  const Display(this.x, this.y);
}
