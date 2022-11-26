
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  String name = "Tejas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Catalog App")
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to building the new App by $name"),
        ),
      ),
    );
  }
}
