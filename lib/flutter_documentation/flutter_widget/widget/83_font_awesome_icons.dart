import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Font Awesome Icons',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font Awesome Icons"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_arrow, size: 50, color: Colors.blue),
            FaIcon(FontAwesomeIcons.amazonPay),
            FaIcon(FontAwesomeIcons.amazon),
            FaIcon(FontAwesomeIcons.google),
            FaIcon(FontAwesomeIcons.phoneFlip),
            FaIcon(FontAwesomeIcons.cartArrowDown),
            FaIcon(FontAwesomeIcons.calendar),
            FaIcon(FontAwesomeIcons.googlePay, size: 50, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
