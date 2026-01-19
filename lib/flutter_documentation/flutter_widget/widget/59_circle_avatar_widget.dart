import 'package:flutter/material.dart';

main() {
  runApp(CircleAvatarApp());
}

class CircleAvatarApp extends StatelessWidget {
  var url =
      "https://pixabay.com/get/g85d8cd11e9132e85ce3ff1a08cd25ca739f4977777ea90c40062baf12b29723fd1e9ddb8a0d4aba63d53891fc7d6d3e67bc551e4017e0ce3af41ff5b9d059b7d_1280.png";

  CircleAvatarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Circle Avatar App",
      home: Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 95,
              //minRadius: 100,
              //maxRadius: 500,
              // backgroundColor: Colors.redAccent,
              // foregroundColor: Colors.purpleAccent,
              backgroundImage: NetworkImage(url),
              // child: Text("Hello"),
            ),
          ),
        ),
      ),
    );
  }
}
