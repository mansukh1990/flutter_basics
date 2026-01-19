/*
ListTile Widget
  - A single fixed height that typically contains some text as well as a leading or trailing icon.
 */
import 'package:flutter/material.dart';

void main() {
  runApp(ListTileApp());
}

class ListTileApp extends StatefulWidget {
  const ListTileApp({super.key});

  @override
  State<StatefulWidget> createState() => ListTileState();
}

class ListTileState extends State<ListTileApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List Tile",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListTile Widget"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text("Title1"),
                subtitle: Text("SubTitle1"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.star),
                onTap: () {},
                onLongPress: () {},
              ),
            ],
          ).toList(),
        ),
        //body: ListView(
        // children: [
        //   ListTile(
        //     title: Text("Title 1"),
        //     subtitle: Text("SubTitle1 \n3rd Line"),
        //     leading: Icon(Icons.person),
        //     trailing: Icon(Icons.star),
        //     onTap: () {},
        //     onLongPress: () {},
        //     enabled: true,
        //     //dense: true,
        //     isThreeLine: true,
        //     tileColor: Colors.orangeAccent,
        //   ),
        //   ListTile(
        //     title: Text("Title 1"),
        //     subtitle: Text("SubTitle1"),
        //     leading: Icon(Icons.person),
        //     trailing: Icon(Icons.star),
        //     selected: true,
        //     selectedTileColor: Colors.cyanAccent,
        //     onTap: () {},
        //     onLongPress: () {},
        //   ),
        // ],
        // ),
      ),
    );
  }
}
