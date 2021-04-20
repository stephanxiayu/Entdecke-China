
import 'package:china/menschen/ma_yun.dart';
import 'package:china/menschen/xin_li.dart';

import 'package:china/wedding.dart';

import 'package:flutter/material.dart';

class MenschenUebersicht extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Center(
            child: Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/d9.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 30,),
      
      Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaYun(),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Ma Yun",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => XinLi(),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Xin Lin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Wedding(),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3, color: Colors.white),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              "Hochzeit in China",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ]),
            ),
           
            
            ]),
             ]) ),
      
    );
  }
}