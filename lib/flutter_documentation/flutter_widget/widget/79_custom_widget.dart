import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Widget",
      debugShowCheckedModeBanner: false,
      home: CustomWidgetApp(),
    );
  }
}

class CustomWidgetApp extends StatelessWidget {
  const CustomWidgetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Column(
          children: [CatItems(), Contact(), SubCatItems(), BottomMenu()],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(backgroundColor: Colors.green),
                ),
              ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemCount: 12,
          itemBuilder:
              (context, index) => Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(backgroundColor: Colors.green),
                  title: Text("Name"),
                  subtitle: Text("Mob. Num"),
                  trailing: Icon(Icons.delete, color: Colors.black),
                ),
              ),
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  const SubCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.lime,
        child: ListView.builder(
          itemCount: 12,
          scrollDirection: Axis.horizontal,
          itemBuilder:
              (context, index) => Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  width: 200,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
