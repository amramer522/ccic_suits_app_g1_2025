import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WevViewExample extends StatefulWidget {
  const WevViewExample({super.key});

  @override
  State<WevViewExample> createState() => _WevViewExampleState();
}

class _WevViewExampleState extends State<WevViewExample> {
  late final WebViewController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://urbi-lifestyle-stg.momrah.gov.sa/biban25/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }
}
