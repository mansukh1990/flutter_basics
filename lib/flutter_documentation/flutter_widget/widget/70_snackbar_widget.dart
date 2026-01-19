import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarApp());
}

class SnackBarApp extends StatelessWidget {
  const SnackBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SnackBar App",
      home: Scaffold(
        appBar: AppBar(title: Text("Snack Bar"), backgroundColor: Colors.blue),
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  final message = SnackBar(
                    content: Text("This is a snack bar"),
                    action: SnackBarAction(label: "Done", onPressed: () {}),
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(),
                    duration: Duration(seconds: 3),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                child: Text("Click Here"),
              ),
            );
          },
        ),
      ),
    );
  }
}
