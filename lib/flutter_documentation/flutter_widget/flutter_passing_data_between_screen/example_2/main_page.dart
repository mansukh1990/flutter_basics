import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_documentation/flutter_widget/flutter_passing_data_between_screen/example_2/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "passing data one screen to another screen",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyHomePages extends StatelessWidget {
  var nameFromIntro;

  MyHomePages(this.nameFromIntro, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "welcome $nameFromIntro",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
