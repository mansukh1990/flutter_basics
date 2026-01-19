import 'package:flutter/material.dart';

class FittedBoxScreen extends StatefulWidget {
  const FittedBoxScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FittedBoxAppState();
}

class _FittedBoxAppState extends State<FittedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FittedBox(
        child: Row(
          children: [
            Image.network(
              'https://pixabay.com/get/g8d2f3a9ee21753bce2f383dcf3cb323e4a09dc03478e5f9f26ebb31cfd9980306e6c766febf7d03fc6ab42b3dbd775550f40ad6cf4d4555e89358a261f49f653_1280.jpg',
            ),
            Image.network(
              'https://pixabay.com/get/g573f59da827d46047e11e91969552106abd3b8906209c1a5d06afb1ae30e4c454b43a9cd45c28b4bef2cbece25ce94c5206f497ca2439581430f873209f98fc6_1280.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
