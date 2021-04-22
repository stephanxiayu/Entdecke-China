import 'package:china/history/geschichte.dart';
import 'package:china/homescreen.dart';
import 'package:china/menschen/menschen.dart';
import 'package:china/sliding/home_page.dart';
import 'package:flutter/material.dart';

class StartSeite extends StatelessWidget {
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
            image: AssetImage("lib/assets/d8.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),


      Positioned(child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 8,
      )),
      SingleChildScrollView(child: SizedBox(height: 100,)),
      Column(verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
                builder: (context) => HomeScreen(),
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
                  "Coole Städte in China",
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
                      SizedBox(height: 30),
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
                            builder: (context) => MenschenUebersicht(),
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
                              "Menschen in China",
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
                    SizedBox(height: 30),
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
                            builder: (context) => Geschichte(),
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
                              "Geschichte von China",
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
                    SizedBox(height: 30),
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
                     onPressed: () {},
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
                              "Sprache in China",
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
                    SizedBox(height: 30),
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
                   onPressed: () {},
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
                            "Unis in China",
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
                ])),
            SizedBox(
              height: 30,
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
                            builder: (context) => HomePage(),
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
                              "Dating in China",
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
                    SizedBox(height: 50),
                  ]),
            ),
          ])
    ])));
  }
}
