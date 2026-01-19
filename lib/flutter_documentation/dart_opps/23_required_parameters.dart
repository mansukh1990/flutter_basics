void main() {
  /*
  Types of parameters
  * Required Parameters
  * Optional Parameters
   - Optional parameters
   - Named Parameters
     - When defining a function,use {para1,param2...} to specify named parameter
     - When calling a function,you can specify named parameters using: paramName:value
   * Default Parameters
     - If no default value is provided, the default value is null
     - The default values must be compile-time constants.
     - Your functions can be us = to define default values for both named and positional parameters.

   */
  student("Mansukh", 89);
  print("");
  student1("Mansukh", rollNo: 3, age: 20);
  print("");
  student2();
  print("");
  student10("Jignesh", roll: 20);
  print("");
  student11("Haresh");
}

//Required Parameters
void student(String name, int rollNo) {
  print(name);
  print(rollNo);
}

//Named Parameters
void student1(var name, {required var rollNo, required var age}) {
  print("Name = $name");
  print("RollNo = $rollNo");
  print("Age = $age");
}

//Optional parameters
void student2([var name, var rollNo, var age]) {
  print("Name is = $name");
  print("Roll No. = $rollNo");
  print("My age is = $age");
}

//Name Parameter
void student10(var name, {var roll = 1}) {
  print("Name = $name");
  print("Roll No.= $roll");
}

//Positional Parameter
void student11(var name, [var roll = 2]) {
  print("Name = $name");
  print("Roll No = $roll");
}
