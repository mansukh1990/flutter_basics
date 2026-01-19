import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Text.rich Widget")),
        body: Center(
          child: Text.rich(
            TextSpan(
              text: "Welcome",
              style: TextStyle(fontSize: 30, color: Colors.red),
              children: <InlineSpan>[
                TextSpan(
                  text: " To",
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
                TextSpan(
                  text: " Flutter !",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'DancingScript',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
