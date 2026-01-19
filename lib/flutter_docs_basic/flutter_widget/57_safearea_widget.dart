import 'package:flutter/material.dart';

void main() {
  runApp(SafeAreaApp());
}

class SafeAreaApp extends StatelessWidget {
  const SafeAreaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.all(20),
          top: true,
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 50, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
