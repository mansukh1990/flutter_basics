import '39_private_pnstance_variable.dart';

void main() {
  var obj = B();
  // obj.a = 20; // not use private variable in other class
  obj.display();
}

class B extends A {}
