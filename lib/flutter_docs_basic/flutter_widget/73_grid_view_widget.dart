/*
GridView Widget
   - A scrollable, 2D array of widgets,
   - We can display images ,text, icons, etc on GridView.

types of  GridView
   1.GridView.count()
   2.GridView.builder()
   3.GridView.custom()
   4.GridView.extend()
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var imageUrl =
      'https://pixabay.com/get/g15dd70078aa383744562672e58633d4d17aac89caa83f58b0213da3470b586dd0d89ed5cb255ae0631436be88936ccef83cbd425f96805d81e54257daada6492_1280.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: GridView(
            // scrollDirection: Axis.horizontal,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              //  childAspectRatio: 2,
              //   mainAxisExtent: 90,
            ),
            children: [
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
              Image.network(imageUrl),
            ],
          ),
        ),
      ),
    );
  }
}
