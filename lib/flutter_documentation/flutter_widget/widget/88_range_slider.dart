import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Range Slider",
      home: RangeSliderPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RangeSliderPage extends StatefulWidget {
  const RangeSliderPage({super.key});

  @override
  State<StatefulWidget> createState() => _RangeSliderPageState();
}

class _RangeSliderPageState extends State<RangeSliderPage> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: RangeSlider(
          labels: labels,
          divisions: 20,
          values: values,
          min: 0,
          max: 100,
          activeColor: Colors.red,
          inactiveColor: Colors.red.shade100,
          onChanged: (newValue) {
            values = newValue;
            print("${newValue.start},${newValue.end}");
            setState(() {});
          },
        ),
      ),
    );
  }
}
