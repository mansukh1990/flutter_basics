import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("con Widget"), backgroundColor: Colors.blue),
        body: Center(
          child: Icon(
            Icons.bike_scooter,
            size: 100,
            color: Colors.brown,
            semanticLabel: "Bike-Scooter",
          ),
        ),
      ),
    ),
  );
}
