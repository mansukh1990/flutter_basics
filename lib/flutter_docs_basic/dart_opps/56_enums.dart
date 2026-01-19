/*
 - Enums, are a special kind of class used to represent a fixed number of constant values
   Syntax - emum name {
                 element1,
                 element2,
                 element3
                 }
 */

void main() {
  for (display x in display.values) {
    print(x);
  }
  print(display.Mansukh);
}

enum display { My, Name, Mansukh }
