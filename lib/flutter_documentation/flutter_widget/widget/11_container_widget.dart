/*
Container
- It is a widget that combines common painting,positioning and sizing of the child widgets.
- It is also a class to store one or more widgets and position them on the screen according to our needs.
- Generally,it is similar to a box for storing contents.
- It allows many attributes to the user for decorating its child widgets such as using margin,which separates the container with other contents.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(25),
            // padding: EdgeInsets.fromLTRB(20, 10, 15, 5),
            //padding: EdgeInsets.only(top: 50, bottom: 20, left: 15, right: 15),
            //padding: EdgeInsets.symmetric(vertical: 80, horizontal: 50),
            // margin: EdgeInsets.all(40),
            //constraints:BoxConstraints.expand(),
            //constraints: BoxConstraints(maxHeight: 100, maxWidth: 150),
            // transform: Matrix4.rotationZ(50.0),
            transform: Matrix4.skewX(3.0)..rotateZ(20.0),
            color: Colors.deepOrange,
            child: Text("Hello Flutter", style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    ),
  );
}
