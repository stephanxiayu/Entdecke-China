import 'dart:convert';


import 'package:flutter/material.dart';



class User {
  final String datum;
  final String thema;
  final String text;
  final String thema2;
  final String text2;
  final String thema3;
  final String text3;
  final String thema4;
  final String text4;
  final String thema5;
  final String text5;


  const User({
    this.datum,
    this.thema,
    this.text,
    this.thema2,
    this.text2,
    this.thema3,
    this.text3,
    this.thema4,
    this.text4,
    this.thema5,
    this.text5,

    
  });

  get users => null;

  static User fromJson(json) => User(
        datum: json['datum'],
        thema: json['thema'],
        text: json['text'],
        thema2: json['thema2'],
        text2: json['text2'],
        thema3: json['thema3'],
        text3: json['text3'],
        thema4: json['thema4'],
        text4: json['text4'],
        thema5: json['thema5'],
        text5: json['text5'],
        
       
      );

  @override
  String toString() {
    return 'User{datum: $datum, thema: $thema, text: $text, thema2: $thema2, text2: $text2, thema3: $thema3, text3: $text3, thema4: $thema4, thema5: $thema5, text5: $text5,}';
  }
}

class UsersApi {


  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('lib/assets/users.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}