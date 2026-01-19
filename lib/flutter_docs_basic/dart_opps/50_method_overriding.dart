/*
 - Subclasses can override instance methods(including operators),getters and setters
 - You can use the @override annotation to indicate that
   you are intentionally overriding a member.
 */

void main() {
  var obj = B();
  obj.display();
}

class A {
  @override
  void display() {
    print("Class A");
  }
}

class B extends A {
  @override
  void display() {
    super.display();
    print("Class B");
  }
}
