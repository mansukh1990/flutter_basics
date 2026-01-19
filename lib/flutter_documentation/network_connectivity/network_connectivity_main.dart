import 'package:flutter/material.dart';

import 'network_connetivity_home.dart';

void main() {
  runApp(NetworkConnectivityApp());
}

class NetworkConnectivityApp extends StatelessWidget {
  const NetworkConnectivityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Network Connectivity App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NetworkConnectivityPage(),
    );
  }
}
