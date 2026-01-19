void main() {
  //List
  var num = ["100", "200", "300"];
  //set
  var num1 = {"400", "500", "600"};
  //Map
  var num2 = {1: 'Red', 2: 'blue', 3: "black"};

  for (var x in num1) {
    print(x);
  }
  num2.forEach((key, value) => print("$key : $value"));
}
