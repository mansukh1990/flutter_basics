/*
 - A Class is a blueprint for creating objects.

 Syntax : - class class_name{
              class members
              }
 - You can create an object using constructor.
 Syntax : - var object_name = new ClassName();
 */

void main() {
  var obj = Pet();
  obj.display();
}

class Pet {
  void display() {
    print("Hello Android");
  }
}
