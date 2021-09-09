import 'package:flutter/material.dart';
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
        
      ),floatingActionButton: FloatingActionButton(child: Icon(Icons.arrow_back, size: 32,color: Colors.grey,), onPressed: ()async{
       await Navigator.pop(context);
      }),
      
    );
  }
}