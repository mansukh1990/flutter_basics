/*
In flutter support two type of font family
1.ttf
2.otf

Create folder in lib package (folder assets in folder  fonts)
after go pubspec.yaml in add font style
 -

 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto Bold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Font"),
          backgroundColor: Colors.blue,
        ),
        body: Text(
          "Mansukh",
          style: TextStyle(fontSize: 60, fontFamily: 'DancingScript'),
        ),
      ),
    ),
  );
}
