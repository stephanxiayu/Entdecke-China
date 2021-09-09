import 'package:china/admob.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChinaTableVideos extends StatefulWidget {
 

  @override
  _ChinaTableVideosState createState() => _ChinaTableVideosState();
}

class _ChinaTableVideosState extends State<ChinaTableVideos> {
WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
      javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.youtube.com/c/ChinaTableProfessionalBriefing/videos",
          onWebViewCreated: (controller){   
            this.controller=controller;
          }
        ),
        
      ),floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,
        child: Icon(Icons.arrow_back, size: 32,color: Colors.grey,), onPressed: ()async{ 
    await controller.evaluateJavascript("document.getElementsByTagName('header')[0].style.display='none'"); 
      }),
     
    );
  }
}