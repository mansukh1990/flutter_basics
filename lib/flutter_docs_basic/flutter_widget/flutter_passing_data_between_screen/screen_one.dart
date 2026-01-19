import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_docs_basic/flutter_widget/flutter_passing_data_between_screen/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<StatefulWidget> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController textController = TextEditingController();
  String value = "";

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
            textField(textController),
            SizedBox(height: 10),
            button(context),
          ],
        ),
      ),
    );
  }

  appBar() {
    return AppBar(title: Text("Screen One"), backgroundColor: Colors.lime);
  }

  Text showText(String value) {
    return Text(value, style: TextStyle(fontSize: 16, color: Colors.black));
  }

  button(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        value = textController.text;
        value = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenTwo(previousValue: value),
          ),
        );
        setState(() {});
      },
      child: Text("Go To Next Page"),
    );
  }
}

Widget textField(TextEditingController textController) {
  return SizedBox(
    width: 350,
    child: TextField(
      controller: textController,
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
