/*
 Getter And Setter
  - Getters and Setters are special methods that provide read and write access to an object's properties.
  - Recall that each instance variable has an implicit getter,plus a setter if appropriate.
 */
void main() {
  var obj = A();
  obj.customSet = "mansukh";
  print(obj.customSet);
}

class A {
  var name;

  // custom setter
  set customSet(var name) {
    this.name = name;
  }

  // custom getter
  String get customSet {
    return name;
  }
}
