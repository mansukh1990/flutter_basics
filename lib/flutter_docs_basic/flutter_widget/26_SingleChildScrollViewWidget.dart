/*
SingleChildScrollView Widget
Properties
  - child
  - controller
  - padding
  - physics
  - primary
  - reverse
  - scrollDirection
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView Widget"),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          //  physics: ScrollPhysics(),
          // physics: NeverScrollableScrollPhysics(),
          //physics: FixedExtentScrollPhysics(),
          //reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(width: 400, color: Colors.orange),
              Container(width: 400, color: Colors.yellow),
            ],
          ),
        ),
      ),
    ),
  );
}
