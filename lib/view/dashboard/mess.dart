import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webviewx/webviewx.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
}

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _Mess();
}

class _Mess extends State<Mess> {

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
            Text("GAES Portal"),
            Text("MESS",
                style: TextStyle(fontSize: 15, color: Colors.white70))
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
                url: Uri.parse(
                    "https://app.powerbi.com/reportEmbed?reportId=bc092132-a76b-4577-ae41-8e71a510bd88&autoAuth=true&ctid=bbb8da8f-f374-490f-9190-2242176e117c&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLWVhc3QtYXNpYS1hLXByaW1hcnktcmVkaXJlY3QuYW5hbHlzaXMud2luZG93cy5uZXQvIn0%3D"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}