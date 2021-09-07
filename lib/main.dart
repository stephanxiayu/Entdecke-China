
import 'package:china/admob.dart';




import 'package:china/start.dart';


import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


void main() { WidgetsFlutterBinding.ensureInitialized();



    AdmobHelper.initialization();
  runApp(ChangeNotifierProvider( create:(BuildContext context)=> AdmobHelper(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false, home: 
         Start(),theme: ThemeData()),
  ));
}