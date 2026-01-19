/*
Stack Widget
  - Positioned Widget
  - Non-Positioned Widget
 */
import 'package:flutter/material.dart';

void main() {
  runApp(StackApp());
}

class StackApp extends StatefulWidget {
  const StackApp({super.key});

  @override
  State<StatefulWidget> createState() => StackState();
}

class StackState extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("StackApp"), backgroundColor: Colors.blue),
        body: Center(
          child: Container(
            child: Stack(
              clipBehavior: Clip.none,
              // textDirection: TextDirection.rtl,
              // fit: StackFit.expand,
              // alignment: Alignment.centerRight,
              children: [
                Container(height: 250, width: 250, color: Colors.tealAccent),
                Container(height: 200, width: 200, color: Colors.limeAccent),
                Positioned(
                  bottom: -150,
                  right: -25,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
