import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class HomePageOne extends StatefulWidget {
  const HomePageOne({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageOneState();
}

class _HomePageOneState extends State<HomePageOne> {
  List<UserDetails> userDetails = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            itemCount: userDetails.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getText(index, 'ID : ', userDetails[index].id.toString()),
                    getText(
                      index,
                      "Name : ",
                      userDetails[index].name.toString(),
                    ),
                    getText(
                      index,
                      "Email : ",
                      userDetails[index].email.toString(),
                    ),
                    getText(
                      index,
                      "Phone : ",
                      userDetails[index].phone.toString(),
                    ),
                    getText(
                      index,
                      "Website : ",
                      userDetails[index].website.toString(),
                    ),
                    getText(
                      index,
                      "Company Name : ",
                      userDetails[index].company.toString(),
                    ),
                    getText(
                      index,
                      "Address : ",
                      '${userDetails[index].address.suite}, ${userDetails[index].address.street}, ${userDetails[index].address.city}, ${userDetails[index].address.zipcode}',
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

  Text getText(int index, String fieldName, String content) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: fieldName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextSpan(text: content, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Future<List<UserDetails>> getData() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        userDetails.add(UserDetails.fromJson(index));
      }
      return userDetails;
    } else {
      return userDetails;
    }
  }
}
