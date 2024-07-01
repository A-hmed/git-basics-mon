import 'package:flutter/material.dart';

import '../../main.dart';

class HomeTile extends StatelessWidget {
   final String text;

   const HomeTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    return  Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.red, width: 12),
          color: purple,
        ),
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),

        child:Text(text, style: defaultStyle, textAlign: TextAlign.center) ,
      ),
    );
  }
}
