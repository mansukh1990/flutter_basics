/*
TextButton Widget
  Properties
    - child
    - onPressed
    - onLongPressed
    - style
    - focusNode
    - clipBehavior
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextButton Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(20),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              side: BorderSide(color: Colors.blueGrey, width: 3),
              backgroundColor: Colors.deepPurpleAccent,
              textStyle: TextStyle(fontSize: 50),
            ),
            onPressed: () {},
            child: Text("Click ON"),
          ),
          // child: TextButton.icon(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {},
          //   label: Text("Click"),
          // ),
        ),
      ),
    ),
  );
}
