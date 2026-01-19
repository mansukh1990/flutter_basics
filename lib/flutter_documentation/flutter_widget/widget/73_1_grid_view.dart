import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.amber,
      Colors.blue,
      Colors.grey,
      Colors.black,
      Colors.green,
      Colors.lime,
      Colors.deepOrange,
      Colors.yellow,
      Colors.orange,
      Colors.pink,
      Colors.brown,
      Colors.purple,
      Colors.teal,
      Colors.orange,
      Colors.pink,
      Colors.brown,
      Colors.purple,
      Colors.teal,
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"), backgroundColor: Colors.blue),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        itemCount: arrColors.length,
        itemBuilder: (context, index) {
          return Container(color: arrColors[index]);
        },
      ),
      // body: GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   mainAxisSpacing: 15,
      //   crossAxisSpacing: 15,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //     Container(color: arrColors[8]),
      //     Container(color: arrColors[9]),
      //   ],
      // ),
      // body: GridView.count(
      //   crossAxisCount: 4,
      //   crossAxisSpacing: 15,
      //   mainAxisSpacing: 15,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //     Container(color: arrColors[8]),
      //   ],
      // ),
    );
  }
}
