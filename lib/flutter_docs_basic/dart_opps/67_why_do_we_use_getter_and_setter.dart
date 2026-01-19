import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_docs_basic/dart_opps/sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Student obj = Student();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    obj.setRoll = 2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(obj.getRoll.toString(), style: TextStyle(fontSize: 50)),
        ),
      ),
    );
  }
}
