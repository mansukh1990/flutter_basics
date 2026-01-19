import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("IconButton Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera),
            iconSize: 100,
            tooltip: "Camera",
            color: Colors.orangeAccent,
            disabledColor: Colors.yellow,
            splashColor: Colors.black87,
            highlightColor: Colors.deepPurpleAccent,
            hoverColor: Colors.blueGrey,
            splashRadius: 200,
          ),
        ),
      ),
    ),
  );
}
