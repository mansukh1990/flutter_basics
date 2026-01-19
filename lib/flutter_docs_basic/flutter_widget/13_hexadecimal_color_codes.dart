import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hexadecimal Color Codes"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(hexColors('FF0D5000'))),
            child: Text("Hello World!"),
          ),
        ),
      ),
    ),
  );
}

int hexColors(String c) {
  String hColor = "0xff$c";
  hColor = hColor.replaceAll('#', '');
  int dColor = int.parse(hColor);
  return dColor;
}
