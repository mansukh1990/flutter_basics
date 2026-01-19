import 'package:flutter/material.dart';

void main() {
  runApp(ListWheelApp());
}

class ListWheelApp extends StatelessWidget {
  const ListWheelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListWheel ScrollView Widget",
      debugShowCheckedModeBanner: false,
      home: ListWheelHome(),
    );
  }
}

class ListWheelHome extends StatefulWidget {
  const ListWheelHome({super.key});

  @override
  State<StatefulWidget> createState() => _ListWheelHomeState();
}

class _ListWheelHomeState extends State<ListWheelHome> {
  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3D List", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200.0,
          children:
              arrIndex.map((value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "$value",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
