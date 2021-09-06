import 'package:china/admob.dart';
import 'package:china/news/bj_rundschau.dart';
import 'package:china/news/daily_cn.dart';
import 'package:china/news/epochtimes.dart';
import 'package:china/news/south.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class NewsGenerall extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Nachrichten aus China"), backgroundColor: Colors.white,),
body: GridView.count(
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
              builder: (context) => DailyCn(),
            ),),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/daily1.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Daily-China",
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
              builder: (context) => SCMoring(),
            ),),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/scm.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "South China Moring Post",
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
              builder: (context) => BjRundschau(),
            ),),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/bj.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Beijing Rundschau",
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
              builder: (context) => EPTimes(),
            ),),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/eptimes.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: const Text(
                  "Epoch Times",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
       
      ],
    ),bottomNavigationBar: Container(
            height: 60,
            color: Colors.black,
            child: AdWidget(
              ad: AdmobHelper.getBannerAd()..load(),
              key: UniqueKey(),
            ))
    );
      
    
  }
}