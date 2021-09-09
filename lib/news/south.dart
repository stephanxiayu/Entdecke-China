import 'package:china/admob.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SCMoring extends StatefulWidget {
 

  @override
  _SCMoringState createState() => _SCMoringState();
}

class _SCMoringState extends State<SCMoring> {
WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
      javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://www.scmp.com/",
          onWebViewCreated: (controller){
            this.controller=controller;
          }
        ),
        
      ),floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,
        child: Icon(Icons.arrow_back, size: 32,color: Colors.grey,), onPressed: ()async{
   
    await controller.evaluateJavascript("document.getElementsByTagName('footer')[0].style.display='none'"); 
      }),
     
    );
  }
}