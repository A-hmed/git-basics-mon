import 'package:basics_mon_c11/screens/calculator/calculator_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  static const String routeName = "calculator";

  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "";
  String lhs = "";
  String savedOperator = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        result,
                        style: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      )))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "7",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "8",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "9",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "+",
                  onPressed: onOperatorClick,
                ),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "4",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "5",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "6",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "-",
                  onPressed: onOperatorClick,
                ),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "1",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "2",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "3",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "*",
                  onPressed: onOperatorClick,
                ),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: ".",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "0",
                  onPressed: onDigitClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "=",
                  onPressed: onEqualClick,
                ),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(
                  digit: "/",
                  onPressed: onOperatorClick,

                ),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onDigitClick(String digit) {
    if(result.contains('.')){
      return ;
    }
    result += digit;
    setState(() {});
  }

  void onOperatorClick(String clickedOperator) {
    if(savedOperator.isEmpty){
      lhs = result;
    }else {
      if(result.isEmpty) return;
      lhs = calculate(lhs, savedOperator, result);
    }
    result = "";
    savedOperator = clickedOperator;
    setState(() {});

    print("lhs = $lhs, savedOperator = ${savedOperator}");
  }

  void onEqualClick(){
    result = calculate(lhs, savedOperator, result);
    lhs = "";
    savedOperator = "";
    setState(() {});
  }

  String calculate(String lhs, String operator, String rhs){
    double n1 = double.parse(lhs);
    double n2 = double.parse(rhs);
    if(operator == "+"){
      return (n1 + n2).toString();
    } else if(operator == "-"){
      return (n1 - n2).toString();
    } else if(operator == "*"){
      return (n1 * n2).toString();
    } else {
      return (n1 / n2).toString();
    }
  }
}
