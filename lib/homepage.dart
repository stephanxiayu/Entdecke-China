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
            image: AssetImage("lib/assets/a5.png"),
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
  
    children:[  TextButton(
  
    
  
      onPressed: (){}, child: Text("Starte deine Reise", style: TextStyle(fontSize: 35),),),]
  
  ),
), SizedBox(height: 50,)

      ])));
      
    
  }
}