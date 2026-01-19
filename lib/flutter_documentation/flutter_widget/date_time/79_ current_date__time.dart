import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Current Date Time"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Current Time: ${time.hour}:${time.minute}:${time.second}',
                  style: TextStyle(fontSize: 25),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Current Time"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
