import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MaterialApp(home: InAppWebViewExample()));
}

class InAppWebViewExample extends StatefulWidget {
  @override
  _InAppWebViewExampleState createState() => _InAppWebViewExampleState();
}

class _InAppWebViewExampleState extends State<InAppWebViewExample> {
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("E-Belediye"),
          centerTitle: true
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri("https://enesbabekoglu.com.tr/projeler/belediye")),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
      ),
    );
  }
}
