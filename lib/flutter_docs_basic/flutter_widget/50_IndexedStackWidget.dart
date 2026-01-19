import 'package:flutter/material.dart';

void main() {
  runApp(IndexStackApp());
}

class IndexStackApp extends StatefulWidget {
  const IndexStackApp({super.key});

  @override
  State<StatefulWidget> createState() => IndexStackState();
}

class IndexStackState extends State<IndexStackApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Index Stack"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: IndexedStack(
            index: index,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.redAccent,
                child: Text("0", style: TextStyle(fontSize: 80)),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Text("1", style: TextStyle(fontSize: 80)),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.lightGreenAccent,
                child: Text("2", style: TextStyle(fontSize: 80)),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.cyanAccent,
                child: Text("3", style: TextStyle(fontSize: 80)),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (index == 3) {
                index = 0;
              } else {
                index = index + 1;
              }
            });
          },
          child: Icon(Icons.change_circle),
        ),
      ),
    );
  }
}
