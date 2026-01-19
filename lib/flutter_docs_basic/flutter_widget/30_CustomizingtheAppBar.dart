import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          toolbarOpacity: 0.6,
          elevation: 25,
          shadowColor: Colors.purple,
          title: Text("AppBar"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          backgroundColor: Colors.lime,
          actions: [Icon(Icons.more_vert)],
          actionsIconTheme: IconThemeData(color: Colors.purple, size: 40),
        ),
        drawer: Drawer(),
        drawerScrimColor: Colors.purple,
        body: Center(
          child: Container(
            color: Colors.orange,
            padding: EdgeInsets.all(25),
            child: Text("Body"),
          ),
        ),
      ),
    ),
  );
}
