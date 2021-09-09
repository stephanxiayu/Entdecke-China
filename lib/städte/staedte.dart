import 'package:china/admob.dart';
import 'package:china/st%C3%A4dte/beijingvideo.dart';
import 'package:china/st%C3%A4dte/chongqing.dart';
import 'package:china/st%C3%A4dte/hongkong.dart';
import 'package:china/st%C3%A4dte/mauer.dart';

import 'package:china/st%C3%A4dte/shanghaivideo.dart';
import 'package:china/st%C3%A4dte/shijiazhuang.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Staedte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Timelap Videos",
          style: TextStyle(
              color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BeijingVideo(),
                        ),
                      ),
                  child: Container(
                   decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
        
                      image: DecorationImage(
                        image: AssetImage(
                          'lib/assets/peking9.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      "Peking",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShanghaiVideo(),
                        ),
                      ),
                  child: Container(
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
        
                      image: DecorationImage(
                        image: AssetImage('lib/assets/cn2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      "Shanghai",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Hongkong(),
                        ),
                      ),
                  child: Container(
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
        
                      image: DecorationImage(
                        image: AssetImage('lib/assets/cn2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      "Hongkong",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chongqing(),
                        ),
                      ),
                  child: Container(
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
        
                      image: DecorationImage(
                        image: AssetImage('lib/assets/chongqing1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      "Chongqing",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              GestureDetector(
                     onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mauer(),
                        ),
                      ),
                  child: Container(
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
        
                      image: DecorationImage(
                        image: AssetImage('lib/assets/mauer3.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      "Chinesische Mauer",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShijiazhuangVideo(),
                        ),
                      ),
                  child: Container(
                    decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
        
                      image: DecorationImage(
                        image: AssetImage('lib/assets/tv.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(
                      "Shijiazhuang",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ]),
      ),
      bottomNavigationBar: Container(
          height: 60,
          color: Colors.black,
          child: AdWidget(
            ad: AdmobHelper.getBannerAd()..load(),
            key: UniqueKey(),
          )),
    );
  }
}
