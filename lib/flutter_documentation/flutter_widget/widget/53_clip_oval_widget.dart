import 'package:flutter/material.dart';

void main() {
  runApp(ClipOvalApp());
}

class ClipOvalApp extends StatefulWidget {
  const ClipOvalApp({super.key});

  @override
  State<StatefulWidget> createState() => ClipOvalState();
}

class ClipOvalState extends State<ClipOvalApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Clip Oval"), backgroundColor: Colors.blue),
        body: Center(
          child: ClipOval(
            clipper: myClipper(),
            child: Container(
              child: Image.network(
                'https://pixabay.com/get/g9fbf31318f8fb4e37c14ed73c1523f26a53054bcf552dff9066410507c65b1d61dee8989a1bd306da1642cc4360dd8b6f03a757202b9197e3585926bcfe9ce73_1280.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class myClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    //  return Rect.fromLTWH(0, 0, 100, 100);
    return Rect.fromCircle(center: Offset(50, 50), radius: 50);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
