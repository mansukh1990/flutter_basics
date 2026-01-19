/*
  - A TextSpan object can just have plain text, or it can have children TextSpan objects with
    their styles that override the style of this object.
  - A TextSpan object can be styled using its style property.
    The style will be applied to the text and the children.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Span Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              text: "Hello World",
              style: TextStyle(fontSize: 20),
              children: <InlineSpan>[
                TextSpan(
                  text: "Android",
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
                TextSpan(text: " !", style: TextStyle(fontSize: 40)),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
