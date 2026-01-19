import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SamplePosts> samplePosts = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return ListView.builder(
            itemCount: samplePosts.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.greenAccent,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "userId : ${samplePosts[index].userId}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "id: ${samplePosts[index].id}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "title : ${samplePosts[index].title}",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "body : ${samplePosts[index].body}",
                      style: TextStyle(fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Future<List<SamplePosts>> getData() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplePosts.add(SamplePosts.fromJson(index));
      }
      return samplePosts;
    } else {
      return samplePosts;
    }
  }
}
