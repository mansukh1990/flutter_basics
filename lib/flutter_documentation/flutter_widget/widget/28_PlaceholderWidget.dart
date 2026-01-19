/*
Placeholder Widget
   - A widget that draws a box that represents where other widget will one day be added.
     this widget is useful during development to indicate that the interface is not yet complete.

 Properties
  - color
  - strokewidth
  - fallbackwidth
  - fallbackheight
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Placeholder Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Flexible(child: Placeholder()),
                Flexible(child: Placeholder()),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
