import 'package:flutter/material.dart';

import 'hero_animated_detail_page.dart';

void main() {
  runApp(HeroAnimatedApp());
}

class HeroAnimatedApp extends StatelessWidget {
  const HeroAnimatedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hero Animated App",
      debugShowCheckedModeBanner: false,
      home: HeroAnimatedHome(),
    );
  }
}

class HeroAnimatedHome extends StatefulWidget {
  const HeroAnimatedHome({super.key});

  @override
  State<StatefulWidget> createState() => _HeroAnimatedHomeState();
}

class _HeroAnimatedHomeState extends State<HeroAnimatedHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animated Widget"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HeroAnimatedDetailPage();
                  },
                ),
              );
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                'assets/images/gamer.png',
                width: 150,
                height: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
