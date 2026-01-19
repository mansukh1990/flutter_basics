import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedCrossFadeApp());
}

class AnimatedCrossFadeApp extends StatelessWidget {
  const AnimatedCrossFadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animated Cross Fade App",
      debugShowCheckedModeBanner: false,
      home: AnimatedCrossFadeHome(),
    );
  }
}

class AnimatedCrossFadeHome extends StatefulWidget {
  const AnimatedCrossFadeHome({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedCrossFadeHomeState();
}

class _AnimatedCrossFadeHomeState extends State<AnimatedCrossFadeHome> {
  var isFirst = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Cross Fade Widget"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Container(
            height: 200,
            width: 200,
            color: Colors.grey.shade400,
          ),
          secondChild: Image.asset(
            "assets/images/woman.png",
            height: 200,
            width: 200,
          ),
          crossFadeState:
              isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(seconds: 2),
        ),
      ),
    );
  }
}
