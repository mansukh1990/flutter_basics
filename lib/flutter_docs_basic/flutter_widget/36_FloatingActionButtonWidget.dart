import 'package:flutter/material.dart';

/*
FloatingActionButton Widget
   Two Types of floating action button
   1. FloatingActionButton
   2.FloatingActionButton.extended
 */
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FloatingActionButton Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(child: Text("Floating Action Button")),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   label: Icon(Icons.add),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // mini: true,
          elevation: 5,
          highlightElevation: 50,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2, color: Colors.black87),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          //shape: CircleBorder(),
          // shape: RoundedRectangleBorder(),
          backgroundColor: Colors.orange,
          //foregroundColor: Colors.red,
          child: Icon(Icons.add, color: Colors.yellow),
        ),
      ),
    ),
  );
}
