import 'package:flutter/material.dart';
import 'package:flutter_skyway_example/Common/Common.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class webpage extends StatefulWidget {
  webpage({Key key}) : super(key: key);

  @override
  _webpageState createState() => _webpageState();
}

class _webpageState extends State<webpage> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    var d = GetScreenObj(context);
    Color back = hexColor("#170844");
    return WebviewScaffold(
      url: "https://116.62.190.90:8080/",
      appBar: new AppBar(
        title: new Text("web test"),
      ),
      ignoreSSLErrors: true,
    );
  }
}
