/*
AppBar Widget
  -
 */
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [Icon(Icons.search)],
          // title: Container(
          //   width: 50,
          //   child: Image.network(
          //     'https://unsplash.com/photos/logo-z7ICBEMUJfw',
          //   ),
          // ),
          // centerTitle: true,
          // // title: Text("AppBar Widget"),
          // //leading: Icon(Icons.account_box),
          // // leadingWidth: 300,
          // backgroundColor: Colors.blue,
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            color: Colors.orange,
            padding: EdgeInsets.all(10),
            child: Text("Body"),
          ),
        ),
      ),
    ),
  );
}
