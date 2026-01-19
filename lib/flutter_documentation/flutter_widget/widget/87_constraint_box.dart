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
      title: "Constraint Box",
      home: ConstrainedBoxPage(),
    );
  }
}

class ConstrainedBoxPage extends StatefulWidget {
  const ConstrainedBoxPage({super.key});

  @override
  State<StatefulWidget> createState() => _ConstrainedBoxPageState();
}

class _ConstrainedBoxPageState extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constraint Box"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 200,
          maxHeight: 200,
          minWidth: 100,
          minHeight: 100,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Hello Android hjh h hj mansfsdfsf f sfsd gs  run away!"),
        ),
        // child: Text(
        //   "Hello Android! Hello Android! Hello Android! Hello Android! Hello Android! Hello Android!",
        //   style: TextStyle(fontSize: 25),
        //   overflow: TextOverflow.ellipsis,
        // ),
      ),
    );
  }
}
