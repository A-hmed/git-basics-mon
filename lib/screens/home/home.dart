import 'package:basics_mon_c11/model/magazine_dm.dart';
import 'package:basics_mon_c11/screens/home/home_tile.dart';
import 'package:basics_mon_c11/screens/home/magazine_tile.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Home extends StatelessWidget {
  static String routeName = "home";
  final int numberOfWidgets = 100;

  Home({super.key});

  List<MagazineDM> magazines = [
    MagazineDM("assets/car.jpg", "Cars"),
    MagazineDM("assets/car.jpg", "X"),
    MagazineDM("assets/car.jpg", "Y"),
    MagazineDM("assets/car.jpg", "Test"),
    MagazineDM("assets/car.jpg", "AAAA"),
    MagazineDM("assets/car.jpg", "AAAA"),
    MagazineDM("assets/car.jpg", "AAAA"),
    MagazineDM("assets/car.jpg", "AAAA"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First screen",
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.w900)),
        centerTitle: true,
        actions: [
          Icon(Icons.add_alarm_rounded, color: Color.fromRGBO(255, 0, 0, .0)),
          Icon(Icons.add_alarm_rounded)
        ],
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeTile(
                text: "magazine",
              ),
              Spacer(),
              HomeTile(
                text: "news",
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: magazines.length,
                itemBuilder: (context, index) => MagazineTile(
                      model: magazines[index],
                    )),
          ),
        ],
      ),
    );
  }
}
