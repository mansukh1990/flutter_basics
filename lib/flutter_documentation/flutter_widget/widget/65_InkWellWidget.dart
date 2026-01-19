import 'package:flutter/material.dart';

void main() {
  runApp(InkWellApp());
}

class InkWellApp extends StatefulWidget {
  const InkWellApp({super.key});

  @override
  State<StatefulWidget> createState() => _InkWellAppState();
}

class _InkWellAppState extends State<InkWellApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "InkWellApp",
      home: Scaffold(
        appBar: AppBar(title: Text("InkWell Widget")),
        body: Center(
          child: InkWell(
            onTap: () {},
            splashColor: Colors.orange,
            radius: 20,
            borderRadius: BorderRadius.circular(100),
            highlightColor: Colors.cyanAccent,
            child: Container(
              color: Colors.transparent,
              height: 200,
              width: 200,
              child: Center(
                child: Text("Button", style: TextStyle(fontSize: 30)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
