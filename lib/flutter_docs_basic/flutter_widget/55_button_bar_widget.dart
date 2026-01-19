import 'package:flutter/material.dart';

void main() {
  runApp(ButtonBarApp());
}

class ButtonBarApp extends StatefulWidget {
  const ButtonBarApp({super.key});

  @override
  State<StatefulWidget> createState() => ButtonBarState();
}

class ButtonBarState extends State<ButtonBarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ButtonBar"), backgroundColor: Colors.blue),
        body: OverflowBar(
          overflowDirection: VerticalDirection.up,
          // alignment: MainAxisAlignment.start,
          //  overflowAlignment: OverflowBarAlignment.end,
          overflowSpacing: 10,
          spacing: 110,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Ok")),
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
          ],
        ),
      ),
    );
  }
}
