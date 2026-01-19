import 'package:flutter/material.dart';

void main() {
  runApp(DrawerApp());
}

class DrawerApp extends StatefulWidget {
  const DrawerApp({super.key});

  @override
  State<StatefulWidget> createState() => DrawerAppState();
}

class DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Drawer"), backgroundColor: Colors.blue),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Align(
                        heightFactor: 0.4,
                        widthFactor: 0.5,
                        child: Image.network(
                          "https://pixabay.com/get/g98a98bc240100ca2c03e7d32892ecf11bbe6392334820580ffd57ef63d8000ef87c89d71fec2b559ef7c7cd97a458a1f0f2080f90149c6200bbc7ef1a2460bf4_1280.jpg",
                        ),
                      ),
                    ),
                    Text("\nMansukh Makwana"),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(title: Text("Home"), leading: Icon(Icons.home)),
                  ListTile(
                    title: Text("Account"),
                    leading: Icon(Icons.account_box),
                  ),
                  ListTile(
                    title: Text("Cart"),
                    leading: Icon(Icons.shopping_cart),
                  ),
                  ListTile(title: Text("Logout"), leading: Icon(Icons.logout)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
