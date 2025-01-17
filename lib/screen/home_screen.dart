import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://velog.io/@aouoa'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            if (controller != null) {
              controller.loadRequest(Uri.parse('https://velog.io/@aouoa/'));
            }
          }, icon: Icon(Icons.home,))
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}