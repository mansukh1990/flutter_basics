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
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              secondCurve: Curves.bounceInOut,
              firstCurve: Curves.easeInOut,
              sizeCurve: Curves.fastOutSlowIn,
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
                  isFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
              duration: Duration(seconds: 4),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                reload();
              },
              child: Text(
                "Cross Fade",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
