import 'package:basics_mon_c11/model/magazine_dm.dart';
import 'package:flutter/material.dart';

class MagazineTile extends StatelessWidget {
  final MagazineDM model;
  const MagazineTile({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(model.imagePath),
        Container(
            margin: EdgeInsets.all(12),
            color: Color.fromRGBO(139, 46, 191, .5),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(model.title, style: TextStyle(color: Colors.white, fontSize: 16),))
      ],
    );
  }
}
