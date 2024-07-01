import 'package:basics_mon_c11/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../register/register.dart';

class Login extends StatefulWidget {
  static String routeName = "login";

  @override
  State createState() {
    return LoginState();
  }
}

class LoginState extends State {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  counter++;
                  setState(() {});
                  print(counter);
                },
                child: Text("$counter")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Register.routeName);
                },
                child: Text("SignUp"))
          ],
        ),
      ),
    );
  }
}