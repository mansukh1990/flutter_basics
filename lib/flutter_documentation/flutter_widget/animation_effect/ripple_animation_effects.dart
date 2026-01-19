import 'package:flutter/material.dart';

void main() {
  runApp(RippleAnimationApp());
}

class RippleAnimationApp extends StatelessWidget {
  const RippleAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ripple Animation Effects",
      debugShowCheckedModeBanner: false,
      home: RippleAnimationHome(),
    );
  }
}

class RippleAnimationHome extends StatefulWidget {
  const RippleAnimationHome({super.key});

  @override
  State<StatefulWidget> createState() => _RippleAnimationHomeState();
}

class _RippleAnimationHomeState extends State<RippleAnimationHome>
    with SingleTickerProviderStateMixin {
  // late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
      lowerBound: 0.5,
    );
    //  _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0, 400.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ripple Animation Effects",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildMyContainer(listRadius[0]),
            buildMyContainer(listRadius[1]),
            buildMyContainer(listRadius[2]),
            buildMyContainer(listRadius[3]),
            buildMyContainer(listRadius[4]),
            buildMyContainer(listRadius[5]),
            Icon(Icons.add_call, color: Colors.white, size: 34),
          ],
        ),
      ),
    );
  }

  Widget buildMyContainer(radius) {
    return Container(
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - _animationController.value),
      ),
    );
  }
}
