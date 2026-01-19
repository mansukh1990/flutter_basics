/*
Padding Widget
   Properties
   - child
   - padding
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Padding Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            color: Colors.orange,
            child: Padding(
              // padding: EdgeInsets.all(50),
              // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              // padding: EdgeInsets.only(left: 10,top: 20,right: 40,bottom: 50),
              padding: EdgeInsets.fromLTRB(100, 90, 80, 70),
              child: Text("Hello", style: TextStyle(fontSize: 50)),
            ),
          ),
        ),
      ),
    ),
  );
}
