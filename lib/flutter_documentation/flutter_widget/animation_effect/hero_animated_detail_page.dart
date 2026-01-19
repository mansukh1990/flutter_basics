import 'package:flutter/material.dart';

class HeroAnimatedDetailPage extends StatelessWidget {
  const HeroAnimatedDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: 'background',
        child: Image.asset('assets/images/gamer.png'),
      ),
    );
  }
}
