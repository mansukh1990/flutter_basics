import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Text Widget Properties",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          textDirection: TextDirection.ltr,
          // textDirection: TextDirection.rtl,
         // textAlign: TextAlign.right,
          textAlign: TextAlign.left,
          //  textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          // textScaleFactor: 5,
          // softWrap: true,
          maxLines: 2,
          // semanticsLabel: "Hash Sign",
        ),
      ),
    ),
  );
}
