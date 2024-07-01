import 'package:basics_mon_c11/model/game_board_args.dart';
import 'package:basics_mon_c11/screens/game_board/game_board.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static String routeName = "splash";

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String player1 = "";
  String player2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                decoration:
                    InputDecoration(hintText: "Write Player1 name here"),
                onChanged: (text) {
                  player1 = text;
                },
              )),
          Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                onChanged: (text) {
                  player2 = text;
                },
                decoration: InputDecoration(labelText: "Player2"),
              )),
          Spacer(),
          Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, GameBoard.routeName,
                        arguments:
                        GameBoardArgs(player1: player1, player2: player2));
                  },
                  child: Text("Start"))),
        ],
      ),
    );
  }
}
