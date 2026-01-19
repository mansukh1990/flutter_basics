void main() {
  //final = Set once but it is initialized when it is accessed.
  //final variable declared but not use not memory consume.
  int x = 1, y = 2;

  final a = x;
  print(a);

  //const = It is a compilation time constant
  // const variable declare and consumed memory and take  memory space  not depend on use or not use
  const b = 4;
  print(b);
}

class a {
  final m = 20;
  static const b = 10;
}
