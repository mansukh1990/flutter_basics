import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wrap Widget",
      home: WrapWidgetApp(),
    );
  }
}

class WrapWidgetApp extends StatefulWidget {
  const WrapWidgetApp({super.key});

  @override
  State<StatefulWidget> createState() => _WrapWidgetAppState();
}

class _WrapWidgetAppState extends State<WrapWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap Widget"), backgroundColor: Colors.blue),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceAround,
          runSpacing: 10,
          // spacing: 10,
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.cyan),
            Container(height: 100, width: 100, color: Colors.black),
            Container(height: 100, width: 100, color: Colors.blueGrey),
            Container(height: 100, width: 100, color: Colors.grey),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.cyan),
            Container(height: 100, width: 100, color: Colors.cyan),
          ],
        ),
      ),
    );
  }
}
