import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'positioned widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("positioned widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 300,
        height: 200,
        color: Colors.grey,
        child: Stack(
          children: [
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(height: 100, width: 100, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
