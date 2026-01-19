import 'package:flutter/material.dart';

void main() {
  runApp(MappingListApp());
}

class MappingListApp extends StatelessWidget {
  const MappingListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mapping Lists",
      debugShowCheckedModeBanner: false,
      home: MappingListHome(),
    );
  }
}

class MappingListHome extends StatefulWidget {
  const MappingListHome({super.key});

  @override
  State<StatefulWidget> createState() => _MappingListHomeState();
}

class _MappingListHomeState extends State<MappingListHome> {
  var arrData = [
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
    {'name': 'Raman', 'mobno': '9737582727', 'email': '2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapping Lists"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children:
              arrData.map((value) {
                return ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(value['name'].toString()),
                  subtitle: Text(value['mobno'].toString()),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 18,
                    child: Text(
                      value['email'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
