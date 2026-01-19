/*
GridView.count Widget
   - GridView.count is the most commonly used grid layout.
     Because We already know the size of the grid.
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
  List items = [
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView.count Widget"),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          padding: EdgeInsets.all(10),
          children: List.generate(
            items.length,
            (index) => Image.network(items[index]),
          ),
        ),
      ),
    );
  }
}
