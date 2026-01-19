import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(SplashPage());
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPageHome(),
    );
  }
}

class SplashPageHome extends StatefulWidget {
  const SplashPageHome({super.key});

  @override
  State<StatefulWidget> createState() => SplashPageHomeState();
}

class SplashPageHomeState extends State<SplashPageHome> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Splash")),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Icon(Icons.account_circle, color: Colors.white, size: 100),
        ),
      ),
    );
  }

  void whereToGo() async {
    var sharePref = await SharedPreferences.getInstance();
    var isLoggedIn = sharePref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 2), () {
      if (isLoggedIn != null) {
        if (isLoggedIn == true) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePageSharedPref()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }
}
