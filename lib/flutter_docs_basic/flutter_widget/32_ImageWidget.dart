import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Center(
            child: Image.network(
              "https://pixabay.com/get/g8f35272674ffe1170c26fd30b01986d2a9abfbcd4511b2c363707ee1285c3f55abd88924fd5b02557401d2528507130b48a6cc027f977e78960cd155148e7738_1280.jpg",
            ),
            // child: Directionality(
            //   textDirection: TextDirection.ltr,
            //   child: Image.asset(
            //     "assets/images/whatsapp.png",
            //     height: 400,
            //     fit: BoxFit.contain,
            //     color: Colors.blue,
            //     colorBlendMode: BlendMode.darken,
            //     semanticLabel: "WhatsApp",
            //     matchTextDirection: true,
            //   ),
            // ),
          ),
        ),
      ),
    ),
  );
}
