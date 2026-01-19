/*
RichText Widget
  - The RichText Widget displays text that uses multiple different styles.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("RichText Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "Welcome",
              style: TextStyle(fontSize: 20, color: Colors.red),
              children: <TextSpan>[
                TextSpan(
                  text: "To",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
                TextSpan(
                  text: "Android",
                  style: TextStyle(fontSize: 40, color: Colors.yellow),
                ),
                TextSpan(text: "World !"),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
