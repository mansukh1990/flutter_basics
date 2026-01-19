import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

commonToast(String message) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.white,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
