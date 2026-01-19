/*
FutureBuilder Widget
  - Future FunctionName()
  async{
        _______
        }
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
  String imgUrl = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FutureBuilder Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Expanded(
          child: Center(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 340,
                    color: Colors.green,
                    child: FutureBuilder(
                      future: getData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else {
                          return Center(
                            child: ClipRect(
                              child: Expanded(
                                child: Image.network(imgUrl, fit: BoxFit.fill),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Refresh"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 2));

    imgUrl =
        'https://pixabay.com/get/gb3eeed1f9044aa71a418441f463cfd6b92ad69ce7c9771f2f4b5cb79249d4d3a0eb41b635c4155ea59b552dcda1768d4_1280.jpg';

    return imgUrl;
  }
}
