import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  static String routeName = "register";
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Navigate to home")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("back to login"))
        ],
      ),
    );
  }
}
