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
  var controllerOne = TextEditingController();
  var controllerTwo = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless And Stateful Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.blue.shade100,
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: controllerOne,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: controllerTwo,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(controllerOne.text.toString());
                    var no2 = int.parse(controllerTwo.text.toString());

                    var sum = no1 + no2;
                    result = "The sum of $no1 + $no2 = $sum";
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(controllerOne.text.toString());
                    var no2 = int.parse(controllerTwo.text.toString());

                    var sub = no1 - no2;
                    result = "The sub of $no1 - $no2 = $sub";
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Sub"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(controllerOne.text.toString());
                    var no2 = int.parse(controllerTwo.text.toString());
                    var mul = no1 * no2;
                    result = "The mul of $no1 * $no2 = $mul";
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Mul"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(controllerOne.text.toString());
                    var no2 = int.parse(controllerTwo.text.toString());
                    var div = no1 / no2;
                    result =
                        "The div of $no1 / $no2 = ${div.toStringAsFixed(2)}";
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Div"),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                result,
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
