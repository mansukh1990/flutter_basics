import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_documentation/flutter_widget/shared_preference/shared_pref/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  label: Text("Email"),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  label: Text("password"),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  //if successfully logged in(creds are correct)

                  var sharePref = await SharedPreferences.getInstance();
                  sharePref.setBool(SplashPageHomeState.KEYLOGIN, true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageSharedPref(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
