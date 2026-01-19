import 'package:flutter/material.dart';

void main() {
  runApp(TweenAnimationApp());
}

class TweenAnimationApp extends StatelessWidget {
  const TweenAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tween Animation",
      debugShowCheckedModeBanner: false,
      home: TweenAnimationHome(),
    );
  }
}

class TweenAnimationHome extends StatefulWidget {
  const TweenAnimationHome({super.key});

  @override
  State<StatefulWidget> createState() => _TweenAnimationHomeState();
}

class _TweenAnimationHomeState extends State<TweenAnimationHome>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    animation = Tween(begin: 200.0, end: 100.0).animate(animationController);
    colorAnimation = ColorTween(
      begin: Colors.orange,
      end: Colors.yellow,
    ).animate(animationController);
    animationController.addListener(() {
      print("Animation Value: ${animation.value}");
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          color: colorAnimation.value,
          width: animation.value,
          height: animation.value,
        ),
      ),
    );
  }
}
