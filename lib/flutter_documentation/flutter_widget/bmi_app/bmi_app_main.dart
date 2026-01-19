import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI APP",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: BmiAppHome(),
    );
  }
}

class BmiAppHome extends StatefulWidget {
  const BmiAppHome({super.key});

  @override
  State<StatefulWidget> createState() => _BmiAppHomeState();
}

class _BmiAppHomeState extends State<BmiAppHome> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.orange.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            colors: [
              Color(0xffffecd2),
              Color(0xfffcb69f),
              // Colors.orange.shade100,
              // Colors.red.shade100,
              // Colors.purple.shade100,
            ],
          ),
          // gradient: LinearGradient(
          //   begin: FractionalOffset(1.0, 0.0),
          //   end: FractionalOffset(0.0, 1.0),
          //   stops: [0.0, 0.2, 1.0],
          //   colors: [
          //     Color(0xffffecd2),
          //     Color(0xfffcb69f),
          //     Color(0xffa84829),
          //     // Colors.orange.shade100,
          //     // Colors.red.shade100,
          //     // Colors.purple.shade100,
          //   ],
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "BMI",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                controller: wtController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  label: Text("Enter Your Weight(in Kgs)"),
                  prefixIcon: Icon(Icons.monitor_weight),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                controller: ftController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  label: Text("Enter Your Height(in Feet)"),
                  prefixIcon: Icon(Icons.height_rounded),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                controller: inController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  label: Text("Enter Your Height(in Inch)"),
                  prefixIcon: Icon(Icons.line_weight_outlined),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inch = inController.text.toString();

                  if (wt != "" && ft != "" && inch != "") {
                    var iWt = int.parse(wt);
                    var iFt = int.parse(ft);
                    var iInch = int.parse(inch);

                    var tInch = (iFt * 12) + iInch;
                    var tCm = tInch * 2.54;
                    var tM = tCm / 100;

                    var bmi = iWt / (tM * tM);

                    var msg = "";

                    if (bmi > 25) {
                      msg = "You are overweight";
                      bgColor = Colors.red.shade100;
                    } else if (bmi < 18) {
                      msg = "You are underweight";
                      bgColor = Colors.orange.shade100;
                    } else {
                      msg = "You are Healthy";
                      bgColor = Colors.green.shade100;
                    }

                    setState(() {
                      result =
                          "$msg \n Your BMI is : ${bmi.toStringAsFixed(2)}";
                    });
                  } else {
                    setState(() {
                      result = "Please fill all the values";
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Calculate"),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                result,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
