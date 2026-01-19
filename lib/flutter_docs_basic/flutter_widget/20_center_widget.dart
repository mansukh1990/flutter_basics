/*
the Center widget is a simple layout widget that positions its single child widget in the center of the parent widget.
 It is useful for aligning a child widget to the center of the screen or other parent widget.
 heightFactor
  - If non-null ,sets its heights to the child's height multiplied by this factor.
  - can be both greater than and less than 1.0 but must be non-negative.
 widthFactor
  - If non-null ,sets its widths to the child's width multiplied by this factor.
  - can be both greater than and less than 1.0 but must be non-negative.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Center Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          heightFactor: 2,
          widthFactor: 2,
          child: Container(height: 100, width: 80, color: Colors.orange),
        ),
      ),
    ),
  );
}
