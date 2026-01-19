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
        body: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 20),
            children: <TextSpan>[
              TextSpan(text: "Hello"),
              TextSpan(
                text: "World!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: " Welcome to "),
              TextSpan(
                text: "Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.orange,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'DancingScript',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
