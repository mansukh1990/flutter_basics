import 'package:flutter/material.dart';

void main() {
  runApp(VerticalDividerApp());
}

class VerticalDividerApp extends StatelessWidget {
  const VerticalDividerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "VerticalDividerApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vertical Divider"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: [
            Expanded(child: Container(color: Colors.yellow)),
            VerticalDivider(
              color: Colors.brown,
              thickness: 5,
              width: 50,
              indent: 20,
              endIndent: 20,
            ),
            Expanded(child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
