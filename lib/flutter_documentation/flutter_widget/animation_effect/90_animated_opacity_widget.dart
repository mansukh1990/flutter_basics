import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedOpacityApp());
}

class AnimatedOpacityApp extends StatelessWidget {
  const AnimatedOpacityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animated Opacity App",
      debugShowCheckedModeBanner: false,
      home: AnimatedOpacityHome(),
    );
  }
}

class AnimatedOpacityHome extends StatefulWidget {
  const AnimatedOpacityHome({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedOpacityHome();
}

class _AnimatedOpacityHome extends State<AnimatedOpacityHome> {
  var _opacity = 1.0;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity Widget"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              // curve: Curves.linearToEaseOut,
              child: Container(width: 200, height: 100, color: Colors.blue),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isVisible) {
                    _opacity = 0.0;
                    isVisible = false; // Hide the container
                  } else {
                    _opacity = 1.0;
                    isVisible = true; // Show the container
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              child: Text("close", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
