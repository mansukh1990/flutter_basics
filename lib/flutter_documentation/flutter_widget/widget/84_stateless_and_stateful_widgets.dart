import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stateless And Stateful Widget",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StatelessAndStatefulHomePage(),
    );
  }
}

class StatelessAndStatefulHomePage extends StatefulWidget {
  const StatelessAndStatefulHomePage({super.key});

  @override
  State<StatelessAndStatefulHomePage> createState() =>
      _StatelessAndStatefulHomePageState();
}

class _StatelessAndStatefulHomePageState
    extends State<StatelessAndStatefulHomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless And Stateful Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count : $count", style: TextStyle(fontSize: 34)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // count = count +1;
                //count+=1;

                setState(() {
                  count++;
                  print('$count');
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              child: Text(
                "Increment Count",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
