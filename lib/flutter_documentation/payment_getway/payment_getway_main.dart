import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_documentation/payment_getway/payment_getway_home_screen.dart';

void main() {
  runApp(PaymentGetWayApp());
}

class PaymentGetWayApp extends StatelessWidget {
  const PaymentGetWayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Payment Gateway App ",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PaymentGetWayHomeScreen(),
    );
  }
}
