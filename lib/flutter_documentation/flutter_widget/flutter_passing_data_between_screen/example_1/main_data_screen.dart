import 'package:flutter/material.dart';

import '../../../../flutter_docs_basic/flutter_widget/flutter_passing_data_between_screen/screen_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Passing Data between Screen",
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}
