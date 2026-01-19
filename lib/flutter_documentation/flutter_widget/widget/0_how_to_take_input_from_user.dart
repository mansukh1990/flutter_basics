import 'dart:io';

void main() {
  print("Enter Your First Name:");
  String? firstName = stdin.readLineSync();

  print("Enter Your Second Name:");
  String? secondName = stdin.readLineSync();

  print('Full name :$firstName $secondName');
}
