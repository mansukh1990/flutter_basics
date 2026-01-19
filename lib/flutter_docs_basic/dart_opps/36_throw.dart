void main() {
  try {
    noCheck(123456);
  } catch (e) {
    print('Enter a 5 digit number');
  }
}

void noCheck(var n) {
  if (n.toString().length == 5) {
    print("Valid Number");
  } else {
    throw FormatException();
  }
}
