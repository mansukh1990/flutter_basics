import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return DemoApppState();
  }
}

class DemoApppState extends State<DemoApp> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              num++;
            });
          },
          child: Text("$num"),
        ),
      ),
    );
  }
}
