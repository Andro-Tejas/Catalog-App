import 'package:flutter/material.dart';

import '../utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedBtn = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedBtn = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(height: 10.0),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 1.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    validator: (String? value) =>
                        (value != null && value.isEmpty) ? "Username can't be empty" : null,
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value != null && value.length < 6) {
                        return 'password length should be greater than 6';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25.0),

                  Material(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(changedBtn ? 60 : 8),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changedBtn ? 40 : 140,
                        height: 40,
                        alignment: Alignment.center,
                        child: changedBtn
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius:
                                BorderRadius.circular(changedBtn ? 60 : 8)),
                      ),
                    ),
                  )

                  // ElevatedButton(
                  //     child: Text("Login",style: TextStyle(fontSize: 15.0),),
                  //     style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                  //     onPressed: (){
                  //       // print("Hi Tejas");
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
