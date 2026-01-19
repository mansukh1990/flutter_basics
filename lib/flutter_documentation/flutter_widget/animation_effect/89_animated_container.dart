import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedContainerApp());
}

class AnimatedContainerApp extends StatelessWidget {
  const AnimatedContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animated Container",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: AnimateContainerHome(),
    );
  }
}

class AnimateContainerHome extends StatefulWidget {
  const AnimateContainerHome({super.key});

  @override
  State<StatefulWidget> createState() => _AnimateContainerHomeState();
}

class _AnimateContainerHomeState extends State<AnimateContainerHome> {
  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;

  // Color bgColor = Colors.blueGrey;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              decoration: myDecor,
              curve: Curves.easeInOutCubicEmphasized,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    );
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    // bgColor = Colors.greenAccent;
                    myDecor = BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.blueGrey,
                    );
                    flag = true;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text("Animated", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
