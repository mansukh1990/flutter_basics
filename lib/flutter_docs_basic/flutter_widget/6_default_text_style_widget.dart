/*
- The text style to apply to descendant Text Widgets that don't have an explicit style
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Default Text Style Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            DefaultTextStyle(
              style: TextStyle(fontSize: 40, color: Colors.red),
              child: Column(
                children: [
                  Text("First"),
                  Text(
                    "Second",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  Text("Third"),
                  Text("Forth"),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
