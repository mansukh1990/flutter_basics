import 'package:flutter/material.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI APP",
      debugShowCheckedModeBanner: false,
      home: const BmiAppHome(),
    );
  }
}

class BmiAppHome extends StatefulWidget {
  const BmiAppHome({super.key});

  @override
  State<BmiAppHome> createState() => _BmiAppHomeState();
}

class _BmiAppHomeState extends State<BmiAppHome> {
  final wtController = TextEditingController();
  final ftController = TextEditingController();
  final inController = TextEditingController();

  String result = "";
  Color bgColor = Colors.orange.shade100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI App"), centerTitle: true),
      body: Container(
        width: double.infinity,
        color: bgColor,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "BMI",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: wtController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Weight (kg)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: ftController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Height (feet)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: inController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Height (inch)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _calculateBMI,
              child: const Text("Calculate"),
            ),

            const SizedBox(height: 20),

            Text(
              result,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void _calculateBMI() {
    final wtText = wtController.text.trim();
    final ftText = ftController.text.trim();
    final inchText = inController.text.trim();

    if (wtText.isEmpty || ftText.isEmpty || inchText.isEmpty) {
      setState(() {
        result = "Please fill all the values";
        bgColor = Colors.orange.shade100;
      });
      return;
    }

    final double? weight = double.tryParse(wtText);
    final double? feet = double.tryParse(ftText);
    final double? inch = double.tryParse(inchText);

    if (weight == null || feet == null || inch == null) {
      setState(() {
        result = "Please enter valid numbers";
        bgColor = Colors.orange.shade100;
      });
      return;
    }

    final totalInches = (feet * 12) + inch;
    final meters = totalInches * 2.54 / 100;
    final bmi = weight / (meters * meters);

    String msg;

    if (bmi >= 25) {
      msg = "You are Overweight";
      bgColor = Colors.red.shade100;
    } else if (bmi < 18.5) {
      msg = "You are Underweight";
      bgColor = Colors.yellow.shade100;
    } else {
      msg = "You are Healthy";
      bgColor = Colors.green.shade100;
    }

    setState(() {
      result = "$msg\nYour BMI is: ${bmi.toStringAsFixed(2)}";
    });
  }
}
