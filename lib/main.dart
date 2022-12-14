import 'package:catalogapp/pages/cart_page.dart';
import 'package:catalogapp/pages/home_page.dart';
import 'package:catalogapp/pages/login_page.dart';
import 'package:catalogapp/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:catalogapp/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      theme:MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
    initialRoute : MyRoutes.homeRoute,
    routes:{
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
      MyRoutes.loginRoute:(context)=>LoginPage(),
      MyRoutes.cartRoute:(context)=>CartPage(),
    },
    );
  }
}

