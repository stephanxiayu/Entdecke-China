import 'package:flutter/material.dart';

class MainImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/cn2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Positioned(child: AppBar(title: Text(
            'Explore Shanghai',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
      backgroundColor: Colors.transparent,
      elevation: 8,
      )),
           
        );
      
}