import 'package:flutter/material.dart';

void main() {
  runApp(ClipRRectApps());
}

class ClipRRectApps extends StatelessWidget {
  const ClipRRectApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClipRRect Widget",
      debugShowCheckedModeBanner: false,
      home: ClipRRectHome(),
    );
  }
}

class ClipRRectHome extends StatefulWidget {
  const ClipRRectHome({super.key});

  @override
  State<StatefulWidget> createState() => _ClipRRectHomeState();
}

class _ClipRRectHomeState extends State<ClipRRectHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Clip R Rect Widget",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            child: Image.asset("assets/images/whatsapp.png"),
          ),
        ),
      ),
    );
  }
}
