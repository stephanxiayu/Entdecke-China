import 'package:china/ChinaTable/ueberschrift.dart';
import 'package:china/admob.dart';
import 'package:china/menschen/menschen.dart';
import 'package:china/news/news_generall.dart';
import 'package:china/unterricht/testlern.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'städte/staedte.dart';

class Start extends StatefulWidget {
 
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,elevation: 8,
      title: Center(
      child: Text("Entdecke China", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
    ),),
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
          builder: (context) => Staedte(),
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
            image: AssetImage('lib/assets/d9.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(8),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: const Text(
              "Städte \in China",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
         buildGesture(context),
          GestureDetector(
          onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MenschenUebersicht(),
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
          onTap: () {},
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
          builder: (context) => TestLern(),
        ),
          ),
          child: Container(child: Lottie.network("https://assets6.lottiefiles.com/packages/lf20_gQSfwH.json"),
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
        
          ),
        ),
        )],
    ),bottomNavigationBar: Container(
            height: 60,
            color: Colors.black,
            child: AdWidget(
              ad: AdmobHelper.getBannerAd()..load(),
              key: UniqueKey(),
            )),
    );
  }
}
Widget buildGesture (BuildContext context) {AdmobHelper admobHelper = Provider.of<AdmobHelper> (context, listen:false);
  return GestureDetector( onTap: ()async {admobHelper.loadRewardedAd();
              await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsGenerall(),
            ));},
    child: Container(decoration: BoxDecoration(
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
                image: AssetImage('lib/assets/china24.png'),
                fit: BoxFit.fill,
              ),
            ),
            padding: const EdgeInsets.all(8),
        child: Align(
            alignment: Alignment.bottomCenter,
            child:  Text(
              "News",
              style: TextStyle(

                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),));
}