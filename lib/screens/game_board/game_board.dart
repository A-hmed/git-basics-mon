import 'package:basics_mon_c11/model/game_board_args.dart';
import 'package:basics_mon_c11/screens/game_board/xo_button.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  static String routeName = "game_board";

  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  int counter = 0;
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    GameBoardArgs args = ModalRoute.of(context)!.settings.arguments! as GameBoardArgs;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("Game board"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${args.player1}: $player1Score",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${args.player2}: $player2Score",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: board[0],
                  onClick: onClick,
                  index: 0,
                ),
                XoButton(
                  symbol: board[1],
                  onClick: onClick,
                  index: 1,
                ),
                XoButton(
                  symbol: board[2],
                  onClick: onClick,
                  index: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: board[3],
                  onClick: onClick,
                  index: 3,
                ),
                XoButton(
                  symbol: board[4],
                  onClick: onClick,
                  index: 4,
                ),
                XoButton(
                  symbol: board[5],
                  onClick: onClick,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: board[6],
                  onClick: onClick,
                  index: 6,
                ),
                XoButton(
                  symbol: board[7],
                  onClick: onClick,
                  index: 7,
                ),
                XoButton(
                  symbol: board[8],
                  onClick: onClick,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onClick(int index) {
    if (board[index].isNotEmpty) return;
    String symbol = counter % 2 == 0 ? "o" : "x";
    board[index] = symbol;
    counter++;
    if(checkWinner()){
      if(symbol == "o"){
        player1Score++;
      }else {
         player2Score++;
      }
      clearBoard();
    }

    if(counter == 9){
      clearBoard();
    }
    setState(() {});
  }

  void clearBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    setState(() {});
  }

  bool checkWinner() {
    ///Rows
    if (board[0].isNotEmpty && board[0] == board[1] && board[1] == board[2]) {
      return true;
    }
    if (board[3].isNotEmpty && board[3] == board[4] && board[4] == board[5]) {
      return true;
    }
    if (board[6].isNotEmpty && board[6] == board[7] && board[7] == board[8]) {
      return true;
    }
    ///Columns
    if (board[0].isNotEmpty && board[0] == board[3] && board[3] == board[6]) {
      return true;
    }
    if (board[1].isNotEmpty && board[1] == board[4] && board[4] == board[7]) {
      return true;
    }
    if (board[2].isNotEmpty && board[2] == board[5] && board[5] == board[8]) {
      return true;
    }
    /// Diagonals
    if (board[0].isNotEmpty && board[0] == board[4] && board[4] == board[8]) {
      return true;
    }
    if (board[2].isNotEmpty && board[2] == board[4] && board[4] == board[6]) {
      return true;
    }
    return false;
  }
}
