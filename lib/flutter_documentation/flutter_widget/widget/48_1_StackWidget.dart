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
      title: 'Stack Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
      appBar: AppBar(title: Text("Stack Widget"), backgroundColor: Colors.blue),
      body: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.blueGrey),
            Positioned(
              top: 150,
              left: 150,
              child: Container(width: 200, height: 200, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
