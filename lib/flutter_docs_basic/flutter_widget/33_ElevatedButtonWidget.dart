import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ElevatedButton Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 150, height: 100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                // shape: BeveledRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(10)),
                // ),
                side: BorderSide(color: Colors.black87, width: 1.0),
                backgroundColor: Colors.blue,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onPressed: () {},
              child: Text("Button", style: TextStyle(color: Colors.white)),
            ),
          ),
          // child: ElevatedButton.icon(
          //   onPressed: () {},
          //   label: Text("Button"),
          //   icon: Icon(Icons.arrow_back_ios),
          // ),
          // child: ElevatedButton(
          //   onPressed: () {
          //     print("Pressed");
          //   },
          //   onLongPress: () {
          //     print("Long Pressed");
          //   },
          //   child: Text("Elevated Button"),
          // ),
        ),
      ),
    ),
  );
}
