import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Decoration Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.purple,
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [Colors.yellow, Colors.blue, Colors.cyanAccent],
              ),
              // shape: BoxShape.circle,
              // shape: BoxShape.rectangle,
              // boxShadow: [
              //   BoxShadow(
              //     //  blurRadius: 50.0,
              //     color: Colors.orange,
              //     // spreadRadius: 20,
              //     offset: Offset(20.0, 40.0),
              //   ),
              // ],
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(20),
              //   bottomRight: Radius.circular(20),
              // ), // for particular corner radius
              //borderRadius: BorderRadius.circular(40.0), // for all side radius
              // borderRadius: BorderRadius.all(Radius.circular(100)),// all side radius
              // border: Border(
              //   top: BorderSide(color: Colors.black87, width: 3),
              //   bottom: BorderSide(color: Colors.lightGreenAccent, width: 6),
              //   left: BorderSide(color: Colors.cyanAccent, width: 2),
              //   right: BorderSide(color: Colors.pink, width: 9),
              // ),
              border: Border.all(
                width: 3,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
            ),
            child: Text("Hello world", style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    ),
  );
}
