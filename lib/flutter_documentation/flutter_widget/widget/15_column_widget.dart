/*
Column Widget
   - A Widget that displays its children in a vertical array.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // textDirection: TextDirection.rtl,
          // verticalDirection: VerticalDirection.up,
          //verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.grey,
              child: Text("Hello World!", style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.orange,
              child: Text("Hello World!", style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: EdgeInsets.all(50),
              color: Colors.green,
              child: Text("Hello World!", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    ),
  );
}
