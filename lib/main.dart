import 'package:basics_mon_c11/screens/calculator/calculator.dart';
import 'package:basics_mon_c11/screens/game_board/game_board.dart';
import 'package:basics_mon_c11/screens/game_board/splash.dart';
import 'package:basics_mon_c11/screens/home/home.dart';
import 'package:basics_mon_c11/screens/login/login.dart';
import 'package:basics_mon_c11/screens/register/register.dart';
import 'package:flutter/material.dart';
Color purple = Color(0xff8a2dbe);
TextStyle defaultStyle = TextStyle(color: Colors.white, fontSize: 20);
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return  MaterialApp(
      routes: {
        Home.routeName: (_) => Home(),
        Login.routeName: (_) => Login(),
        Register.routeName: (_) => Register(),
        Calculator.routeName: (context) => Calculator(),
        GameBoard.routeName: (_) => GameBoard(),
        Splash.routeName: (_) => Splash()
      },
      initialRoute: Splash.routeName,
    );
  }
}