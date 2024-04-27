import 'package:flutter/material.dart';
import 'package:news_app/Widgets/back_button.dart';
import 'package:news_app/Widgets/text.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebView extends StatefulWidget {
  // ignore: non_constant_identifier_names
  WebView({super.key, required this.Urldetails});
  // ignore: non_constant_identifier_names
  String? Urldetails;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late WebViewController? webViewController;
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.Urldetails ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: backButton(color: Colors.black),
            centerTitle: true,
            title: const text(
                title: 'Web Page',
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold)),
        body: (webViewController == null)
            ? Center(child: CircularProgressIndicator())
            : WebViewWidget(controller: webViewController!));
  }
}
