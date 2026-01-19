/*
ListView Separated Widget
   - ItemBuilder
   - separatorBuilder
 */
import 'package:flutter/material.dart';

void main() {
  runApp(ListViewSeparatedApp());
}

class ListViewSeparatedApp extends StatefulWidget {
  const ListViewSeparatedApp({super.key});

  @override
  State<StatefulWidget> createState() => ListViewSeparatedState();
}

class ListViewSeparatedState extends State<ListViewSeparatedApp> {
  final person = List<String>.generate(50, (i) => "Person ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListViewSeparatedApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Separated App")),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.orangeAccent,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Text(person[index]),
              ),
            );
          },
          itemCount: person.length,
          separatorBuilder: (context, index) {
            return Divider(thickness: 2);
          },
        ),
      ),
    );
  }
}
