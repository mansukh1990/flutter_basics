import 'dart:io';

void main() {
  print("Enter your first name");
  String? firstName = stdin.readLineSync();

  print("Enter your second name");
  String? secondName = stdin.readLineSync();

  print("Full Name $firstName $secondName");
}
