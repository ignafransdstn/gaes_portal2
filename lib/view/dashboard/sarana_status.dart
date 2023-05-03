import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class SaranaStatus extends StatefulWidget {
  const SaranaStatus({Key? key}) : super(key: key);

  
  @override
  State<SaranaStatus> createState() => _SaranaStatusState();
}

late WebViewXController webViewXController;
class _SaranaStatusState extends State<SaranaStatus> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: WebViewX(
        initialContent: '<iframe title="Report Section" width="350" height="700" src="https://app.powerbi.com/view?r=eyJrIjoiNzgxMzIyYWUtODc1Zi00N2FjLTgxNTQtZTlhZDA2ZjhiN2Q0IiwidCI6ImJiYjhkYThmLWYzNzQtNDkwZi05MTkwLTIyNDIxNzZlMTE3YyIsImMiOjEwfQ%3D%3D" frameborder="0" allowFullScreen="true"></iframe>',
        initialSourceType: SourceType.html,
        onWebViewCreated: (controller) => webViewXController = controller, height: 700, width: 350,
      ),
    );
  }
}