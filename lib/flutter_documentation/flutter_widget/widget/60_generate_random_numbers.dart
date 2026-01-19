import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(GenerateRandomNumbersApp());
}

class GenerateRandomNumbersApp extends StatefulWidget {
  const GenerateRandomNumbersApp({super.key});

  @override
  State<GenerateRandomNumbersApp> createState() =>
      _GenerateRandomNumbersAppState();
}

class _GenerateRandomNumbersAppState extends State<GenerateRandomNumbersApp> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GenerateRandomNumbersAppS",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Generate Random Numbers"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$count", style: TextStyle(fontSize: 30)),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // count++;
                      count = Random().nextInt(20);
                    });
                  },
                  child: Text("Random Number"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
