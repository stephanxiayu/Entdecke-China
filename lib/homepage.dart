import 'package:china/homescreen.dart';
import 'package:china/startseite.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        bottom: false,
        top: false,
            child: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/d9.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),


      Positioned(child: AppBar(title: Center(child: Text("Entdecke China", style: TextStyle(fontSize: 35),)),
      backgroundColor: Colors.transparent,
      elevation: 8,
      )),
Align(alignment: Alignment.bottomCenter,
  child:   Row(mainAxisAlignment: MainAxisAlignment.center,
  
  crossAxisAlignment: CrossAxisAlignment.center,
  
    children:[  Container(height: 150,
      child: TextButton(
  
      
  
        onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartSeite(),
                        ),
                      ), child: Text("Starte deine Reise", style: TextStyle(fontSize: 35, color: Colors.white),),),
    ),]
  
  ),
), SizedBox(height: 50,)

      ])));
      
    
  }
}