class Clock {
  void run() {
    print("Clock is running");
  }
}

class DigitClock extends Clock {
  @override
  void run() {
    print("DigitClock is running");
  }
}

void main() {
  var ref = Clock();
  ref.run();

  ref = DigitClock();
  ref.run();
}
