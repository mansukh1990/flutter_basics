import 'package:flutter/material.dart';

void main() => runApp(FlutterLogoAnimate());

class FlutterLogoAnimate extends StatefulWidget {
  const FlutterLogoAnimate({super.key});

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<FlutterLogoAnimate> {
  var _size = 200.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterLogo Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              FlutterLogo(
                curve: Curves.easeIn,
                duration: Duration(seconds: 2),
                size: _size,
                // style: FlutterLogoStyle.stacked,
                textColor: Colors.black87,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _size = _size + 100;
                    if (_size > 500) {
                      _size = 200.0;
                    }
                  });
                },
                child: Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
