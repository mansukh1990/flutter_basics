import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Property"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            //Sweep Gradient
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: [
                  Color(hexColors('#0D5000')),
                  Color(hexColors('#000090')),
                ],
                stops: [0.2, 1.0],
                startAngle: 0.5,
                endAngle: 1.0,
              ),
            ),
            // decoration: BoxDecoration(
            //   //RadialGradient
            //   gradient: RadialGradient(
            //     colors: [
            //       Color(hexColors('#662D8C')),
            //       Color(hexColors('#EB1E79')),
            //     ],
            //     stops: [0.2, 1.0],
            //     // center: Alignment(0.5, 0.5),
            //     focal: Alignment(0.2, 0.5),
            //   ),
            // ),
            // decoration: BoxDecoration(
            // Linear Gradient
            //   gradient: LinearGradient(
            //     colors: [
            //       Color(hexColors('#0D5000')),
            //       Color(hexColors('#000090')),
            //     ],
            //     stops: [0.2, 0.9],
            //   ),
            // ),
            child: Text("Hello World!"),
          ),
        ),
      ),
    ),
  );
}

int hexColors(String c) {
  String hColor = "0xff$c";
  hColor = hColor.replaceAll('#', '');
  int dColor = int.parse(hColor);
  return dColor;
}
