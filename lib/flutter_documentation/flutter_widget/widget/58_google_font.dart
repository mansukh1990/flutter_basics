import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(GoogleFontApp());
}

class GoogleFontApp extends StatelessWidget {
  const GoogleFontApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GoogleFontApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Google Font"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            "Hello",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
