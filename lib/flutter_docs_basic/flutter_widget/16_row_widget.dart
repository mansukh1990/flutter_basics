/*
Row Widget
   - A widget that displays its children in a horizontal array.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Row Widget"), backgroundColor: Colors.blue),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.ltr,
          // textDirection: TextDirection.rtl,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.redAccent,
              child: Text("A"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.orange,
              child: Text("B"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.grey,
              child: Text("C"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Click")),
          ],
        ),
      ),
    ),
  );
}
