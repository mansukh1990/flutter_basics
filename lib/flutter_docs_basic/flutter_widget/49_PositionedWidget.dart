/*
Positioned Widget
 */
import 'package:flutter/material.dart';

void main() {
  runApp(PositionedApp());
}

class PositionedApp extends StatefulWidget {
  const PositionedApp({super.key});

  @override
  State<StatefulWidget> createState() => PositionedState();
}

class PositionedState extends State<PositionedApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Positioned State"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(height: 200, width: 200, color: Colors.limeAccent),
                Positioned.fill(
                  top: 2,
                  right: 4,
                  bottom: 5,
                  left: 3,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.lightGreenAccent,
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
