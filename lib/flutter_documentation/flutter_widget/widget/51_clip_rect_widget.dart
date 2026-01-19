import 'package:flutter/material.dart';

void main() {
  runApp(ClipRectApp());
}

class ClipRectApp extends StatefulWidget {
  const ClipRectApp({super.key});

  @override
  State<StatefulWidget> createState() => ClipRectState();
}

class ClipRectState extends State<ClipRectApp> {
  var url =
      "https://pixabay.com/get/ga0a1ac59021ebd94f525876cd1a8be3da5df94c244dc704992f2b953425ae4885cbbdec45e54ce10379e35f747384b40cfb83bcd4b907b356ed7c88dd8279404_1280.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Clip Rect"), backgroundColor: Colors.blue),
        body: Center(
          child: ClipRect(
            child: Align(
              alignment: Alignment.center,
              heightFactor: 0.7,
              widthFactor: 0.6,
              child: Image.network(url),
            ),
          ),
        ),
      ),
    );
  }
}
