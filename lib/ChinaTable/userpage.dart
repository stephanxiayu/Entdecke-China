

import 'package:china/ChinaTable/json.dart';
import 'package:flutter/material.dart';


class UserPage extends StatefulWidget {
  final User user;
  const UserPage({Key key,@required this.user,}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState(user);
}

class _UserPageState extends State<UserPage> {
  final User user;
  _UserPageState(this.user);

  
  @override
  Widget build(BuildContext context) => Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text(
        user.thema,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(5.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            
              
              SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      user.text,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]))
            ],
          ),
        ),
      ),
    ),
  );

}





  