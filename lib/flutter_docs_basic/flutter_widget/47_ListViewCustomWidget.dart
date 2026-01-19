/*
ListView Custom Widget
  - silverChildListDelegate
  - silverChildBuilderDelegate
 */
import 'package:flutter/material.dart';

void main() {
  runApp(ListViewCustomWidget());
}

class ListViewCustomWidget extends StatefulWidget {
  const ListViewCustomWidget({super.key});

  @override
  State<StatefulWidget> createState() => ListViewCustomWidgetState();
}

class ListViewCustomWidgetState extends State<ListViewCustomWidget> {
  final person = List<String>.generate(30, (i) => "Person ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ListViewCustomWidget")),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(person[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
