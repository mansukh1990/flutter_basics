import 'package:flutter/material.dart';

void main() {
  runApp(ListViewDemo());
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<StatefulWidget> createState() => ListViewState();
}

class ListViewState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Widget"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          //reverse: false,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Container(width: 150, color: Colors.greenAccent, child: Text("")),
            Container(width: 150, color: Colors.redAccent, child: Text("")),
            Container(
              width: 150,
              color: Colors.lightBlueAccent,
              child: Text(""),
            ),
            Container(width: 150, color: Colors.redAccent, child: Text("")),
            Container(width: 150, color: Colors.greenAccent, child: Text("")),
            Container(width: 150, color: Colors.orangeAccent, child: Text("")),
            Container(width: 150, color: Colors.purpleAccent, child: Text("")),
            Container(
              width: 150,
              color: Colors.lightBlueAccent,
              child: Text(""),
            ),
            Container(width: 150, color: Colors.greenAccent, child: Text("")),
            Container(width: 150, color: Colors.redAccent, child: Text("")),
            Container(
              width: 150,
              color: Colors.lightGreenAccent,
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
