

import 'package:china/beijingvideo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: PageView(scrollDirection: Axis.vertical, children: [
      Stack(
        children:[ Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/peking11.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 100,),
                Align(
            alignment: Alignment. center,
           
             child: Container(
                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                  ),
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: TextButton(onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BeijingVideo(),)),
                                  
                                                                      
                                      child: Text(
                                        "Entdecke Beijing",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
              
                  ),SizedBox(height: 50,)  ] ),
        Stack(
        children:[ Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/chongqing1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 100,),
                Align(
            alignment: Alignment. center,
           
             child: Container(
                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                  ),
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Center(
                                    child: Text(
                                      "Entdecke Chongching",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
              
          ))  ] ) ] )));
  }
}
