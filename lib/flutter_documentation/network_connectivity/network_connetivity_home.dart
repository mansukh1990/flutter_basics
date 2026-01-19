import 'package:flutter/material.dart';

import 'network_connectivity.dart';

class NetworkConnectivityPage extends StatelessWidget {
  const NetworkConnectivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Network connectivity",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            if (await NetworkUtil.hasInternet()) {
              print("Network is available");
            } else {
              print("Network is not available");
            }
          },
          child: Text("Check Net"),
        ),
      ),
    );
  }
}
