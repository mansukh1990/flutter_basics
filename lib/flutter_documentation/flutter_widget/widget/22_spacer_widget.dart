/*
Spacer Widget
  - Spacing between the two widgets.
  - Used with Row and column.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(height: 100, width: 60, color: Colors.orange),
            Spacer(),
            Container(height: 100, width: 60, color: Colors.yellow),
            Spacer(flex: 3),
            Container(height: 100, width: 60, color: Colors.green),
          ],
        ),
      ),
    ),
  );
}
