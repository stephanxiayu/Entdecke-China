import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SCMoring extends StatefulWidget {
 

  @override
  _SCMoringState createState() => _SCMoringState();
}

class _SCMoringState extends State<SCMoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.transparent,),
      body: SafeArea(
        child: WebView(
      javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.scmp.com/",
        ),
      ),
      
    );
  }
}