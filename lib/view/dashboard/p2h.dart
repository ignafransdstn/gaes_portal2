import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class P2hDashboard extends StatefulWidget {
  const P2hDashboard({Key? key}) : super(key: key);

  
  @override
  State<P2hDashboard> createState() => _P2hDashboardState();
}

late WebViewXController webViewXController;
class _P2hDashboardState extends State<P2hDashboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: WebViewX(
        initialContent: '<iframe title="pdh" width="350" height="700" src="https://app.powerbi.com/view?r=eyJrIjoiNDRhYTUzMTEtNDc4Yy00ZTM4LWE0YTItN2MwN2IzMDAwODZkIiwidCI6ImJiYjhkYThmLWYzNzQtNDkwZi05MTkwLTIyNDIxNzZlMTE3YyIsImMiOjEwfQ%3D%3D" frameborder="0" allowFullScreen="true"></iframe>',
        initialSourceType: SourceType.html,
        onWebViewCreated: (controller) => webViewXController = controller, height: 700 , width: 350,
      ),
    );
  }
}