class Student {
  int? _roll;

  set setRoll(int number) {
    if (number <= 0) {
      _roll = 0;
    } else {
      _roll = number;
    }
  }

  int get getRoll => _roll!;
}
