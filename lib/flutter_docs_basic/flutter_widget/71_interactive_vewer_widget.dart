/*
Interactive Viewer Widget
   - A Widget that enables pan gestures and zoom interactions with its child.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(InteractiveViewerApp());
}

class InteractiveViewerApp extends StatelessWidget {
  const InteractiveViewerApp({super.key});

  @override
  Widget build(BuildContext context) {
    var url =
        'https://pixabay.com/get/gdacdda1fe9e40e874d39754beca9abbdcfcef4ec094cdee60c77cf68b7be56f7e194b39350dbfb2b1e9182afe4e6aeea85820cc1b00eb3dd10234266c4fcd0bb_1280.png';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "InteractiveViewerApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Interactive Viewer"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            child: ClipRect(
              child: InteractiveViewer(
                constrained: true,
                boundaryMargin: EdgeInsets.all(20),
                scaleEnabled: true,
                maxScale: 10,
                minScale: 1,
                child: Image.network(url),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
