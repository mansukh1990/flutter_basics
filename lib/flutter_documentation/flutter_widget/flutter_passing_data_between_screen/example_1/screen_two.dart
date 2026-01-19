import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key, required this.previousValue});

  final String previousValue;

  @override
  State<StatefulWidget> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  TextEditingController textEditingController = TextEditingController();
  String value = "";

  @override
  void initState() {
    value = widget.previousValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showText(value),
            SizedBox(height: 10),
            textField(),
            SizedBox(height: 10),
            button(context),
          ],
        ),
      ),
    );
  }

  appBar() {
    return AppBar(title: Text("Screen Two"), backgroundColor: Colors.lime);
  }

  Text showText(String value) {
    return Text(value, style: TextStyle(fontSize: 16, color: Colors.black));
  }

  button(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        value = textEditingController.text;
        Navigator.pop(context, value);
      },
      child: Text("Go To Previous Page"),
    );
  }

  Widget textField() {
    return SizedBox(
      width: 350,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          hintText: "Please enter text here",
          hintStyle: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
