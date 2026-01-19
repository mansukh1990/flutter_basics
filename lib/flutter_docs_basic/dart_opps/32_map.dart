import 'dart:collection';

void main() {
  var map1 = {"first": 10, "second": 20, 'third': 30};
  print(map1);

  var map2 = <int, String>{};
  map2[2] = "cap";
  map2[4] = "truck";
  print(map2);

  Map<String, String> map3 = {'A': 'Mansukh', 'B': "Haresh", 'C': 'Jignesh'};
  map3['D'] = "Punit";
  print(map3);
  print(map3.length);

  Map<int, String> map4 = const {
    1: 'Ahmedabad',
    2: "GandhiNagar",
    3: 'Junagadh',
  };
  // map4[4] = 'Halvad';
  print(map4);

  var map11 = HashMap();
  map11[1] = 10;
  map11[2] = 20;
  map11[3] = 30;
  print(map11);

  for (int i in map11.values) {
    print(i);
  }
  map11.forEach((key, value) {
    print("key:$key,value : $value");
  });
}
