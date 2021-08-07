import 'package:china/ChinaTable/ueberschrift.dart';
import 'package:china/history/geschichte.dart';
import 'package:china/homepage.dart';
import 'package:china/homescreen.dart';
import 'package:china/news/artikel_detailpage.dart';
import 'package:china/news/news.dart';

import 'package:flutter/material.dart';

import 'menschen/menschen.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, home: Start(), theme: ThemeData()));

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(child:  GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/cn14.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Chineische Universität",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
     GestureDetector(
           onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WegWeiser(),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/2.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
           child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Neue praktische chinesisch",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
           
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/d9.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Chinesische Städte",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenschenUebersicht(),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/1.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Menschen in China",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
       GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeNews(),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/3.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "News in China",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    )));
  }
}
