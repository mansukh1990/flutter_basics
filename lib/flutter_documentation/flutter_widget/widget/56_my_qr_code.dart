import 'package:flutter/material.dart';

main() {
  runApp(QRCode());
}

class QRCode extends StatelessWidget {
  var url =
      'https://pixabay.com/get/gaf372b7be03e9f1855448861546e9c3bdb9ebd1dff5f893889b1ad4756b0c4e15a97bc7acab7cf46e9a951e5029b1f4e1b4583d457f84626dea17887e0f80a74_1280.jpg';

  QRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My QR Code App",
      home: Scaffold(
        backgroundColor: Colors.yellow[400],
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              "My QR Code",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(url, height: 180),
            ),
          ),
        ),
      ),
    );
  }
}
