import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
}

// ignore: camel_case_types
class eSurvey extends StatefulWidget {
  const eSurvey({Key? key}) : super(key: key);

  @override
  State<eSurvey> createState() => _eSurvey();
}

// ignore: camel_case_types
class _eSurvey extends State<eSurvey> {
  // Backend
  final GlobalKey webViewkey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
    ios: IOSInAppWebViewOptions(allowsInlineMediaPlayback: true),
  );

  late PullToRefreshController pullToRefreshController;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(color: Colors.blue),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
            urlRequest: URLRequest(
              url: await webViewController?.getUrl(),
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Frontend
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(120, 41, 106, 247),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 41, 106, 247),
        title: Column(
          children: const [
            Text("GAES PORTAL"),
            Text(
              "E-SURVEY",
              style: TextStyle(fontSize: 15, color: Colors.white70),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            InAppWebView(
              key: webViewkey,
              initialUrlRequest: URLRequest(
                url: Uri.parse("https://forms.office.com/r/HTP61JJ45a"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
