import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  final String symbol;
  final Function onClick;
  final int index;
  const XoButton({super.key, required this.symbol, required this.onClick, required this.index});

  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(onPressed: (){
          onClick(index);
        }, child: Text(symbol, style: TextStyle(fontSize: 22),))));
  }
}
