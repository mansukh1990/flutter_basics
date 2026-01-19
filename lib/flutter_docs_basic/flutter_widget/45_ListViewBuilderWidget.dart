/*
ListView Builder Widget
  Propertied
  1.itemCount
  2.itemBuilder
 */

import 'package:flutter/material.dart';

void main() {
  runApp(ListViewBuilderApp());
}

class ListViewBuilderApp extends StatefulWidget {
  const ListViewBuilderApp({super.key});

  @override
  State<StatefulWidget> createState() => ListViewBuilderState();
}

class ListViewBuilderState extends State<ListViewBuilderApp> {
  final person = List<String>.generate(50, (i) => "Person ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List View Builder",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Builder"),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: person.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(person[index]),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.phone),
              onTap: () {},
              onLongPress: () {},
            );
          },
        ),
      ),
    );
  }
}
