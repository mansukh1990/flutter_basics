import 'package:flutter/material.dart';

import 'data/local/db_helper.dart';
import 'home_page.dart';

void main() {
  runApp(DataBaseApp());
}

class DataBaseApp extends StatelessWidget {
  const DataBaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sqflite data base",
      debugShowCheckedModeBanner: false,
      home: SqfliteHomePage(),
    );
  }
}

class DataBaseHome extends StatefulWidget {
  const DataBaseHome({super.key});

  @override
  State<StatefulWidget> createState() => _DataBaseHomeState();
}

class _DataBaseHomeState extends State<DataBaseHome> {
  DBHelper dbHelper = DBHelper.getInstance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sqflite data base"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(color: Colors.red),
    );
  }
}
