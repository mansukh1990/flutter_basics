import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtil {
  static Future<bool> hasInternet() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.none)) return false;

    try {
      final lookup = await InternetAddress.lookup('google.com');
      return lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }
}
