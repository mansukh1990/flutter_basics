import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<StatefulWidget> createState() => DemoApppState();
}

class DemoApppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      title: "App Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Title"),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
