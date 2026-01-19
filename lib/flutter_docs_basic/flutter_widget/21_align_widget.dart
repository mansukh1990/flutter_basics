/*
Align Widget
- Align widget is a layout widget that aligns a child widget within its parent widget.
  It allows you to specify the alignment of the child widget using the alignment property,
  which takes an Alignment object.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Align Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Align(
          // alignment: Alignment.topLeft,
          //alignment: Alignment.bottomRight,
          // alignment: Alignment(-1, -1),
          heightFactor: 2,
          widthFactor: 3,
          child: Container(color: Colors.orange, height: 80, width: 100),
        ),
      ),
    ),
  );
}
