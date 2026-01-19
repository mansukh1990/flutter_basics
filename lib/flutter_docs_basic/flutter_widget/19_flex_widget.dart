/*
the Flex widget is a multi-child layout widget that arranges its children in a single row or column and allows them to take up remaining free space. 
It is similar to the Row and Column widgets, but it allows you to specify a flex value for each child, which determines how much of the remaining free space the child should take up.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Flex Widget")),
        body: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              height: 100,
              width: 150,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text("First", style: TextStyle(fontSize: 20)),
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: Text("Second", style: TextStyle(fontSize: 20)),
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text("First", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    ),
  );
}
