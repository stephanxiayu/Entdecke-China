import 'dart:async';



import 'package:china/ChinaTable/json.dart';
import 'package:china/ChinaTable/userpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class WegWeiser extends StatefulWidget {
  @override
  _WegWeiserState createState() => _WegWeiserState();
}

class _WegWeiserState extends State<WegWeiser> {
  Future _future;

  Future<String> loadString() async =>
      await rootBundle.loadString('lib/assets/Kältehilfe/users.json');


  @override
  void initState() {
  
    super.initState();
    _future = loadString();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         
          backgroundColor: Colors.teal,
          title: Center(child: Text("Suppenküchen")),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: 
          Container(
            child: FutureBuilder<List<User>>(
              future: UsersApi.getUsersLocally(context),
              builder: (context, snapshot) {
                final users = snapshot.data;
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Center(child: CircularProgressIndicator());
                  default:
                    if (snapshot.hasError) {
                      return Center(child: Text('Some error occurred!'));
                    } else {
                      return buildUsers(users);
                    }
                }
              },
            
          ),));
         
      
  }

  Widget buildUsers(List<User> users) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return Card(
            elevation: 6,
            margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
            child: ListTile(
              onTap: () {
                print(user);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => UserPage(user: user),
                ));
              },
              leading: Icon(
                Icons.help_center,
                color: Colors.teal,
              ),
              title: Text(
                user.datum,
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              subtitle: Text(
                user.thema,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal,
              ),
            ),
          );
        },
      );
}


  