import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          SizedBox(height:10.0),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SizedBox(height:10.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username"
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                  ),
                ),
                SizedBox(height:10.0),
                ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                    onPressed: (){
                      print("Hi Tejas");
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
