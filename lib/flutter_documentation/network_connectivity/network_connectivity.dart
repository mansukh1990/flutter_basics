import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtil {
  static Future<bool> isNetworkAvailable() async {
    final List<ConnectivityResult> result =
        await Connectivity().checkConnectivity();

    return !result.contains(ConnectivityResult.none);
  }
}
