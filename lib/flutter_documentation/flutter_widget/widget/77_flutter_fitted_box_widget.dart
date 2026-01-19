import 'package:flutter/material.dart';

import 'fitted_box_widget.dart';

void main() {
  runApp(FittedBoxApp());
}

class FittedBoxApp extends StatefulWidget {
  const FittedBoxApp({super.key});

  @override
  State<StatefulWidget> createState() => _FittedBoxAppState();
}

class _FittedBoxAppState extends State<FittedBoxApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FittedBoxApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FittedBoxScreen(),
    );
  }
}
