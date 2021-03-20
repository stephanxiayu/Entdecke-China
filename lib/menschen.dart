import 'package:china/peking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menschen extends StatefulWidget {
  @override
  _MenschenState createState() => _MenschenState();
}

class _MenschenState extends State<Menschen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: PageView(scrollDirection: Axis.vertical, children: [
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Peking(),
              ),
            );
          },
          child: Image.asset(
            'lib/assets/peking11.png',
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Peking(),
              ),
            );
          },
          child: Image.asset(
            'lib/assets/chongqing1.png',
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Peking(),
              ),
            );
          },
          child: Image.asset(
            'lib/assets/peking3.png',
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ])));
  }
}
