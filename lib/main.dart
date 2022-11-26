import 'package:catalogapp/pages/home_page.dart';
import 'package:catalogapp/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      theme:ThemeData(
        primarySwatch: Colors.grey
      ),

    // initialRoute : "/home",
    routes:{
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage()
    },
    );
  }
}

