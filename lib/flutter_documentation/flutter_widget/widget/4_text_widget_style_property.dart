import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Widget's Style Property"),
          backgroundColor: Colors.blue,
        ),
        body: Text(
          "\nLorem Ipsum is simply dummy text of the printing and typesetting industry.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            // fontWeight: FontWeight.bold
            fontWeight: FontWeight.w400,
            // letterSpacing: 8,
            //wordSpacing: 20,
            //color: Colors.blue,
            //   foreground: Paint()
            //      ..color = Colors.purple
            //      ..strokeWidth = 3.0
            //    ..style = PaintingStyle.stroke,
            // background: Paint()
            //   ..color = Colors.green
            //   ..strokeWidth = 1.0
            //   ..style = PaintingStyle.stroke,
            //backgroundColor: Colors.yellow,
            //fontStyle: FontStyle.italic,
            //decoration: TextDecoration.underline,
            decoration: TextDecoration.combine([
              TextDecoration.underline,
              TextDecoration.overline,
            ]),
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dashed,
            shadows: [Shadow(color: Colors.green,blurRadius: 4.0,offset: Offset(4, 1))]
          ),
        ),
      ),
    ),
  );
}
