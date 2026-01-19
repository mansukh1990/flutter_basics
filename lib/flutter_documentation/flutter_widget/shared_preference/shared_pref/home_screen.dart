import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class HomePageSharedPref extends StatelessWidget {
  const HomePageSharedPref({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _logout(context);
            },
            tooltip: "Logout",
          ),
        ],
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Icon(
            Icons.home,
            color: Colors.white.withOpacity(0.5),
            size: 100,
          ),
        ),
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Logged out and preferences cleared")),
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
