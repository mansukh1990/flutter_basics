import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //   color: Colors.blue,
          //   child: AutoSizeText(
          //     "this is auto size text a",
          //     group: myGroup,
          //     style: TextStyle(fontSize: 50),
          //     maxLines: 4,
          //     overflow: TextOverflow.ellipsis,
          //     minFontSize: 20,
          //     maxFontSize: 60,
          //   ),
          // ),
          // SizedBox(height: 30),
          //  Container(
          //    color: Colors.deepOrange,
          //    child: AutoSizeText(
          //      "this is auto size text b",
          //      group: myGroup,
          //      maxLines: 4,
          //      style: TextStyle(fontSize: 60),
          //      overflow: TextOverflow.ellipsis,
          //    ),
          //  ),
          //  SizedBox(height: 30),
          Container(
            color: Colors.yellowAccent,
            child: AutoSizeText.rich(
              TextSpan(
                children: [
                  TextSpan(text: "This is a", style: TextStyle(fontSize: 30)),
                  TextSpan(
                    text: " Flutter",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.cyanAccent,
            child: AutoSizeText(
              "The Text to Display",
              style: TextStyle(fontSize: 60),
              maxLines: 2,
              //  overflow: TextOverflow.ellipsis,
              minFontSize: 30,
              //  maxFontSize: 60,
              overflowReplacement: Text('Sorry String too long'),
              // presetFontSizes: [50, 30, 20],
              stepGranularity: 10,
            ),
          ),
          SizedBox(height: 30),
          Container(
            color: Colors.yellowAccent,
            child: Text(
              "The Text to Display",
              style: TextStyle(fontSize: 60),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
