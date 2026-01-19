/*
- Mixin is simply a class with no constructor.
- use for Reuse the code.
- Use with keyword
 */

class Student with Name, Age {
  void roll() {}
}

class Teacher with Name, Age {
  void subject() {}
}

mixin Name {
  void name() {}
}
mixin Age {
  void age() {}
}
