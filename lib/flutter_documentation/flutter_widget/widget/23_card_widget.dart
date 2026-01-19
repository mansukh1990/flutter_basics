/*
Card Widget
   - A material design card : a panel with slightly rounded corners and an elevation shadow.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Card(
          color: Colors.blue,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),),
          elevation: 5,
          shadowColor: Colors.blue,
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Hello Android!", style: TextStyle(fontSize: 25)),
          ),
        ),
      ),
    ),
  );
}
