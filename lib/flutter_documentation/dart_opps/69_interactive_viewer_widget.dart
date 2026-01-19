/*
InteractiveViewer
  - In Flutter, the InteractiveViewer widget is a widget that allows the user to pan, zoom, and rotate a child widget using gestures.
    It is often used to display large or complex images or other content that requires interactive viewing.
  - A widget that enables pan gestures and zoom interactions with its child.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String imageUrl =
      'https://unsplash.com/photos/a-hand-holds-a-bottle-of-wine-oN1QOAsN-fQ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            color: Colors.red,
            child: ClipRect(
              child: InteractiveViewer(
                scaleEnabled: true,
                panEnabled: true,
                minScale: 0.5,
                maxScale: 4,
                boundaryMargin: EdgeInsets.all(20),
                constrained: false,
                child: Image.network(imageUrl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
