import 'package:flutter/material.dart';

main() {
  runApp(TextFieldApp());
}

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  State<StatefulWidget> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  var emailText = TextEditingController();
  var passwordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextFieldApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("TextField"), backgroundColor: Colors.blue),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: emailText,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black45, width: 2),
                    ),
                    // prefixIcon: Icon(Icons.email, color: Colors.orangeAccent),
                    // suffixText: "UserName Exist",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.email, color: Colors.orangeAccent),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: passwordText,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.orangeAccent),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    String uName = emailText.text.toString();
                    String uPassword = passwordText.text;

                    print("Email: $uName");
                    print("Password:$uPassword");
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
