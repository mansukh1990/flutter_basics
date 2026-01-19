import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Expanded Widget vs Flexible Widget")),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              height: 500,
              color: Colors.orange,
              child: Text("First", style: TextStyle(fontSize: 20)),
            ),
            Flexible(
              fit: FlexFit.tight,
              // fit: FlexFit.loose,
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                //  height: 150,
                color: Colors.lightBlueAccent,
                child: Text("Second", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
