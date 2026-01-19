import 'package:flutter/material.dart';
import 'package:flutter_bascis/flutter_documentation/flutter_widget/webview/view_url.dart';

class WebViewHomeScreen extends StatelessWidget {
  const WebViewHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("webView", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewUrl(
                        title: "Architecture case study",
                        url:
                            "https://docs.flutter.dev/app-architecture/case-study",
                      );
                    },
                  ),
                );
              },
              child: Text("open url"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewUrl(
                        title: "WebView",
                        url:
                            "https://www.youtube.com/watch?v=bsgeeJ6-9H0&list=PLQfqkPlP5hGgloJf5_nmiSuqC6hpuH5ja&index=2",
                      );
                    },
                  ),
                );
              },
              child: Text("open url"),
            ),
          ],
        ),
      ),
    );
  }
}
