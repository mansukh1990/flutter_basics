import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SharedPreferenceApp());
}

class SharedPreferenceApp extends StatelessWidget {
  const SharedPreferenceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preference',
      debugShowCheckedModeBanner: false,
      home: SharedPreferenceHome(),
    );
  }
}

class SharedPreferenceHome extends StatefulWidget {
  const SharedPreferenceHome({super.key});

  @override
  State<StatefulWidget> createState() => _SharedPreferenceHomeState();
}

class _SharedPreferenceHomeState extends State<SharedPreferenceHome> {
  var nameController = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "No value saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  label: Text("Name"),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  var name = nameController.text.toString();

                  var pref = await SharedPreferences.getInstance();
                  pref.setString(KEYNAME, name);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text("Save"),
              ),
              SizedBox(height: 10),
              Text(nameValue),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    nameValue = getName ?? "No value saved";
    setState(() {});
  }
}
