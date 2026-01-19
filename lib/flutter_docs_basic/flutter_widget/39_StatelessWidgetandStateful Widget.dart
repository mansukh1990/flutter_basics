/*
Stateless Widget
  - Abstract Class
    build()
Stateful Widget
   - Abstract Class
     createState()
 */
import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<StatefulWidget> createState() => DemoAppState();
}

class DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child: Text("Hello")),
    );
  }
}
