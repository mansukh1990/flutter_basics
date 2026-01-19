import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_documentation/flutter_widget/webview/webview_screen.dart';

void main() {
  runApp(WebViewApp());
}

class WebViewApp extends StatelessWidget {
  const WebViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WebView App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WebViewHomeScreen(),
    );
  }
}
