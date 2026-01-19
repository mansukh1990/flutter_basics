void main() {
  var obj = Student();
  obj.name = "Mansukh";
  obj.age = 43;
  obj.display();
}

class Student {
  var name;
  var age;

  void display() {
    print("Name = $name");
    print("Age = $age");
  }
}
