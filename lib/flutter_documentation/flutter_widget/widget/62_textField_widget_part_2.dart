import 'package:flutter/material.dart';

main() {
  runApp(TextFieldApp());
}

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TextField",
      home: Scaffold(
        appBar: AppBar(title: Text("TextField"), backgroundColor: Colors.blue),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                // hintText: "Email",
                border: OutlineInputBorder(),
                // icon: Icon(Icons.person),
                // prefixText: "User Name:",
                //prefixIcon: Icon(Icons.person, color: Colors.red),
                suffixIcon: Icon(Icons.email, color: Colors.blue),
              ),
              // cursorColor: Colors.red,
              // cursorWidth: 5,
              // cursorHeight: 10,
              showCursor: true,
              // maxLines: null,
              // obscureText: true,
              // obscuringCharacter: "*",
              //  maxLength: 10,
              // keyboardType: TextInputType.number,
              // keyboardType: TextInputType.text,
              // autofocus: true,
              // enabled: true,
              // readOnly: false,
              // decoration: InputDecoration(
              //   hintText: "Enter Your Name",
              //   hintStyle: TextStyle(color: Colors.white),
              //   helperText: "or User Name",
              //   helperStyle: TextStyle(color: Colors.redAccent),
              //   filled: true,
              //   fillColor: Colors.purple,
              //   border: OutlineInputBorder(
              //     borderSide: BorderSide.none,
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   // border: InputBorder.none,
              //   labelText: "First Name",
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
