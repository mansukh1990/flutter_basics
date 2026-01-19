import 'package:flutter/material.dart';

void main() {
  runApp(DividerApp());
}

class DividerApp extends StatelessWidget {
  const DividerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Divider App",
      home: Scaffold(
        appBar: AppBar(title: Text("Divider"), backgroundColor: Colors.blue),
        body: Column(
          children: [
            Container(height: 200, color: Colors.yellow),
            Divider(
              thickness: 5,
              color: Colors.brown,
              height: 50,
              indent: 15,
              endIndent: 15,
            ),
            Container(height: 200, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
