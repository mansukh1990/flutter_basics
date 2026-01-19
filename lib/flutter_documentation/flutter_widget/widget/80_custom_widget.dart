import 'package:flutter/material.dart';

import '../../widgets_common/rounded_btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Custom Widget",
      home: CustomWidget(),
    );
  }
}

class CustomWidget extends StatefulWidget {
  const CustomWidget({super.key});

  @override
  State<StatefulWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 150,
              child: RoundedButton(
                radius: BorderRadius.circular(10),
                btnName: "Login",
                textStyle: TextStyle(color: Colors.white),
                icon: Icon(Icons.lock, color: Colors.white),
                onPressed: () {
                  print("Logged In!!");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 150,
              child: RoundedButton(
                radius: BorderRadius.circular(20),
                btnName: "Sign Up",
                textStyle: TextStyle(color: Colors.white, fontSize: 20),
                onPressed: () {
                  print("Logged In!!");
                },
                bgColors: Colors.orange,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              child: RoundedButton(
                radius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                btnName: "Login",
                textStyle: TextStyle(color: Colors.white),
                icon: Icon(Icons.lock, color: Colors.white),
                onPressed: () {
                  print("Logged In!!");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 150,
              child: RoundedButton(
                radius: BorderRadius.horizontal(
                  right: Radius.circular(10),
                  left: Radius.circular(10),
                ),
                btnName: "Login",
                textStyle: TextStyle(color: Colors.white),
                icon: Icon(Icons.lock, color: Colors.white),
                onPressed: () {
                  print("Logged In!!");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
