/*
GridView.builder Widget
  - To show a long list or an infinite number of items that may come from the database,
    we need GridView.builder() constructor.
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
    'https://pixabay.com/get/g1384c272a44ffd9928aa13cc9476b1ace7783fc6dcc013db69b7798c6a7cb490683afa6df673360c1855e5b9709a4ed41fab95b8ce123a6770a4fcd9ed91af95_1280.png',
    'https://pixabay.com/get/g3ad952b0a25b72eb53a646257ad1f84ee508f3dca0885c291f968b250c1ee933dad698b94ae4d37a9866dbc0d29ffec2167bbb944e84224b8c108d1d3b52d33b_1280.png',
    'https://pixabay.com/get/gc88874162124bbf01cb4e84bcba0b6814db01fed73bd88b1a475ecdb406a9be2578854bf19ccda683cbf438713a2488387dbce93d517666aeacce7691cdeea1a_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/g1384c272a44ffd9928aa13cc9476b1ace7783fc6dcc013db69b7798c6a7cb490683afa6df673360c1855e5b9709a4ed41fab95b8ce123a6770a4fcd9ed91af95_1280.png',
    'https://pixabay.com/get/g3ad952b0a25b72eb53a646257ad1f84ee508f3dca0885c291f968b250c1ee933dad698b94ae4d37a9866dbc0d29ffec2167bbb944e84224b8c108d1d3b52d33b_1280.png',
    'https://pixabay.com/get/gc88874162124bbf01cb4e84bcba0b6814db01fed73bd88b1a475ecdb406a9be2578854bf19ccda683cbf438713a2488387dbce93d517666aeacce7691cdeea1a_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/g1384c272a44ffd9928aa13cc9476b1ace7783fc6dcc013db69b7798c6a7cb490683afa6df673360c1855e5b9709a4ed41fab95b8ce123a6770a4fcd9ed91af95_1280.png',
    'https://pixabay.com/get/g3ad952b0a25b72eb53a646257ad1f84ee508f3dca0885c291f968b250c1ee933dad698b94ae4d37a9866dbc0d29ffec2167bbb944e84224b8c108d1d3b52d33b_1280.png',
    'https://pixabay.com/get/gc88874162124bbf01cb4e84bcba0b6814db01fed73bd88b1a475ecdb406a9be2578854bf19ccda683cbf438713a2488387dbce93d517666aeacce7691cdeea1a_1280.png',
    'https://pixabay.com/get/gd2d228330d391d7288fd4005bf9b48c3b88d21f8000d3132449f3bdd4e854ebb30c3e004b9fa956f7d81c00fa2d1c9f39f5d272fffc37193e884f8389b985f94_1280.png',
    'https://pixabay.com/get/g1384c272a44ffd9928aa13cc9476b1ace7783fc6dcc013db69b7798c6a7cb490683afa6df673360c1855e5b9709a4ed41fab95b8ce123a6770a4fcd9ed91af95_1280.png',
    'https://pixabay.com/get/g3ad952b0a25b72eb53a646257ad1f84ee508f3dca0885c291f968b250c1ee933dad698b94ae4d37a9866dbc0d29ffec2167bbb944e84224b8c108d1d3b52d33b_1280.png',
    'https://pixabay.com/get/gc88874162124bbf01cb4e84bcba0b6814db01fed73bd88b1a475ecdb406a9be2578854bf19ccda683cbf438713a2488387dbce93d517666aeacce7691cdeea1a_1280.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Builder Widget"),
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Image.network(
              items[index],
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}
