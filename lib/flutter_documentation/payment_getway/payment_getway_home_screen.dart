import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentGetWayHomeScreen extends StatefulWidget {
  const PaymentGetWayHomeScreen({super.key});

  @override
  State<PaymentGetWayHomeScreen> createState() =>
      _PaymentGetWayHomeScreenState();
}

class _PaymentGetWayHomeScreenState extends State<PaymentGetWayHomeScreen> {
  final Razorpay _razorpay = Razorpay();

  @override
  void initState() {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Payment Gateway", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            backgroundColor: Colors.teal,
          ),
          onPressed: () {
            var options = {
              'key': 'rzp_live_ILgsfZCZoFIKMb',
              'amount': 100 * 100,
              'name': 'Acme Corp.',
              'description': 'Fine T-Shirt',
              'retry': {'enabled': true, 'max_count': 1},
              'send_sms_hash': true,
              'prefill': {
                'contact': '8888888888',
                'email': 'test@razorpay.com',
              },
              'external': {
                'wallets': ['paytm'],
              },
            };
            _razorpay.open(options);
          },
          child: Text(
            "Pay with Razorpay",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    showAlertDialog(
      context,
      "Payment Successful",
      "Payment ID: ${response.paymentId}",
    );

    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text("Payment Success"), backgroundColor: Colors.green),
    // );
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    showAlertDialog(
      context,
      "Payment Failed",
      "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}",
    );
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text("Payment Failed"), backgroundColor: Colors.red),
    // );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    showAlertDialog(
      context,
      "External Wallet Selected",
      "${response.walletName}",
    );
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text("Payment Success"), backgroundColor: Colors.green),
    // );
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // set up the buttons
    Widget continueButton = ElevatedButton(
      child: const Text("Continue"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(title: Text(title), content: Text(message));
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
