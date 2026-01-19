/*
Expanded Widget and Flexible Widget
  - Using an Expanded widget makes a child of a Row or Column or Flex along the main axis
  - If multiple children are expanded ,the available space is divided among them according to the flex factor.
  Properties
  - child
  - debugTypicalAncestorWidgetClass
  - fit
  -flex
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Expanded Widget and Flexible Widget")),
        body: Column(
          children: [
            Flexible(
              flex: 6,
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                width: 500,
                color: Colors.orange,
                child: Text("First", style: TextStyle(fontSize: 20)),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                width: 500,
                color: Colors.blue,
                child: Text("Second", style: TextStyle(fontSize: 20)),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                width: 500,
                color: Colors.grey,
                child: Text("Third", style: TextStyle(fontSize: 20)),
              ),
            ),
            // Expanded(
            //   child: Container(
            //     padding: EdgeInsets.all(30),
            //     alignment: Alignment.center,
            //     width: 500,
            //     color: Colors.orange,
            //     child: Text("First", style: TextStyle(fontSize: 20)),
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     padding: EdgeInsets.all(30),
            //     alignment: Alignment.center,
            //     width: 500,
            //     color: Colors.blue,
            //     child: Text("Second", style: TextStyle(fontSize: 20)),
            //   ),
            // ),
            // Expanded(
            //   child: Container(
            //     padding: EdgeInsets.all(30),
            //     alignment: Alignment.center,
            //     width: 500,
            //     color: Colors.grey,
            //     child: Text("Third", style: TextStyle(fontSize: 20)),
            //   ),
            // ),
          ],
        ),
      ),
    ),
  );
}
