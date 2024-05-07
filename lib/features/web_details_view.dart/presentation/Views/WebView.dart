import 'package:flutter/material.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/back_button.dart';
import 'package:news_app/features/category_view/presentation/view/widgets/text.dart';
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
  var webViewController;
  @override
  void initState() {
    super.initState();
    _urlRun();
  }

  void _urlRun() async {
    webViewController = await WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(
          Uri.parse(widget.Urldetails ?? 'https://www.google.com.eg/?hl=ar'));
    setState(() {});
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
            ? Center(
                child: CircularProgressIndicator(
                color: Colors.black,
              ))
            : WebViewWidget(controller: webViewController!));
  }
}
