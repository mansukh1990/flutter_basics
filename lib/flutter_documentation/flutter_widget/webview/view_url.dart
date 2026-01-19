import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewUrl extends StatefulWidget {
  final String title, url;
  const ViewUrl({super.key, required this.title, required this.url});

  @override
  State<ViewUrl> createState() => _ViewUrlState();
}

class _ViewUrlState extends State<ViewUrl> {
  @override
  Widget build(BuildContext context) {
    final controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse(widget.url.toString()));
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
