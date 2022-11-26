import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login page",
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
