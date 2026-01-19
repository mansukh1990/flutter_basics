/*
ClipRRect Widget
   - borderRadius
 */

import 'package:flutter/material.dart';

void main() {
  runApp(ClipRRectApp());
}

class ClipRRectApp extends StatefulWidget {
  const ClipRRectApp({super.key});

  @override
  State<StatefulWidget> createState() => ClipRRectState();
}

class ClipRRectState extends State<ClipRRectApp> {
  var url =
      "https://pixabay.com/get/g98a98bc240100ca2c03e7d32892ecf11bbe6392334820580ffd57ef63d8000ef87c89d71fec2b559ef7c7cd97a458a1f0f2080f90149c6200bbc7ef1a2460bf4_1280.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ClipRRect"), backgroundColor: Colors.blue),
        body: Center(
          child: ClipRRect(
            // borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
            borderRadius: BorderRadius.circular(40),
            //  borderRadius: BorderRadius.all(Radius.circular(20)),
            // borderRadius: BorderRadius.only(
            //   bottomLeft: Radius.circular(50),
            //   topLeft: Radius.circular(20),
            //   topRight: Radius.circular(20),
            //   bottomRight: Radius.circular(50),
            // ),
            child: Align(
              heightFactor: 0.7,
              widthFactor: 0.7,
              child: Image.network(url),
            ),
          ),
        ),
      ),
    );
  }
}
