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
      title: "Call back Function",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: CallbackFunctionHome(),
    );
  }
}

class CallbackFunctionHome extends StatefulWidget {
  const CallbackFunctionHome({super.key});

  @override
  State<StatefulWidget> createState() => _CallbackFunctionHomeState();
}

class _CallbackFunctionHomeState extends State<CallbackFunctionHome> {
  callBack() {
    print("Clicked!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("call back function"),
        backgroundColor: Colors.blue,
      ),
      body: ElevatedButton(onPressed: callBack, child: Text("Click Me!!")),
    );
  }
}
