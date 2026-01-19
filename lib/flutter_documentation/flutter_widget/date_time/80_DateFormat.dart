import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("DateFormat"), backgroundColor: Colors.blue),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "d is DAY : ${DateFormat('d').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "E is ABBR_WEEKDAY : ${DateFormat('E').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "EEEE is WEEKDAY : ${DateFormat('EEEE').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "EEEEE is WEEKDAY_FIRST_LETTER : ${DateFormat('EEEEE').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "LLL is ABBR_STANDALONE_MONTH : ${DateFormat('LLL').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "LLLL is STANDALONE_MONTH : ${DateFormat('LLLL').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "Md is NUM_MONTH_DAY : ${DateFormat('Md').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MEd is NUM_MONTH_WEEKDAY_DAY : ${DateFormat('MEd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MMM is ABBR_MONTH : ${DateFormat('MMM').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MMMd is ABBR_MONTH_DAY : ${DateFormat('MMMd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MMMEd is ABBR_MONTH_WEEKDAY_DAY : ${DateFormat('MMMEd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "M is NUM_MONTH : ${DateFormat('M').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MMMM is MONTH : ${DateFormat('MMMM').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MMMMd is MONTH_DAY : ${DateFormat('MMMMd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "MMMMEEEEd is MONTH_WEEKDAY_DAY : ${DateFormat('MMMMEEEEd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "QQQ is ABBR_QUARTER : ${DateFormat('QQQ').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "QQQQ is QUARTER : ${DateFormat('QQQQ').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "y is YEAR : ${DateFormat('y').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yM is YEAR_NUM_MONTH : ${DateFormat('yM').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMd is YEAR_NUM_MONTH_DAY : ${DateFormat('yMd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMEd is YEAR_NUM_MONTH_WEEKDAY_DAY : ${DateFormat('yMEd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMMM is YEAR_ABBR_MONTH : ${DateFormat('yMMM').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMMMd is YEAR_ABBR_MONTH_DAY : ${DateFormat('yMMMd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMMMEd is YEAR_ABBR_MONTH_WEEKDAY_DAY : ${DateFormat('yMMMEd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMMMM is YEAR_MONTH : ${DateFormat('yMMMM').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMMMMd is YEAR_MONTH_DAY : ${DateFormat('yMMMMd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yMMMMEEEEd is YEAR_MONTH_WEEKDAY_DAY : ${DateFormat('yMMMMEEEEd').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yQQQ is YEAR_ABBR_QUARTER : ${DateFormat('yQQQ').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "yQQQQ is YEAR_QUARTER : ${DateFormat('yQQQQ').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "H is HOUR24 : ${DateFormat('H').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "Hm is HOUR24_MINUTE : ${DateFormat('Hm').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "Hms is HOUR24_MINUTE_SECOND : ${DateFormat('Hms').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "j is HOUR : ${DateFormat('j').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "jm is HOUR_MINUTE : ${DateFormat('jm').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "jms is HOUR_MINUTE_SECOND : ${DateFormat('jms').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "m is MINUTE : ${DateFormat('m').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "ms is MINUTE_SECOND : ${DateFormat('ms').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                Text(
                  "s is SECOND : ${DateFormat('s').format(dateTime)}",
                  style: TextStyle(fontSize: 25),
                ),
                Divider(),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Date Format"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
