import 'package:flutter/material.dart';
/*
expand for (SizedBox.expand get maxHeight and maxWidth)
shrink for (SizeBox.shrink get minHeight and minWidth)
square for (SizeBox.square)
 */

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("SizedBox Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Wrap(
          direction: Axis.horizontal,
          children: [
            SizedBox.square(
              dimension: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Click ME")),
            ),
            SizedBox(width: 20),
            SizedBox.square(
              dimension: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Click ME")),
            ),
            SizedBox(width: 40),
            SizedBox.square(
              dimension: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Click ME")),
            ),
          ],
        ),
      ),
    ),
  );
}
