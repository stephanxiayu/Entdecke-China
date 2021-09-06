import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DailyCn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:SafeArea(
        child:  WebView(
javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "http://www.chinadaily.com.cn/",
        ),
      ),
      
    );
  
  }
}