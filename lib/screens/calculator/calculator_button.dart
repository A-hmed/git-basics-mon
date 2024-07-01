import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Function onPressed;
  final String digit;
  const CalculatorButton({super.key, required this.digit, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(onPressed: (){
          if(digit == "="){
            onPressed();
          }else {
            onPressed(digit);
          }

        }, child: Text("$digit", style: TextStyle(fontSize: 22),)));
  }
}
