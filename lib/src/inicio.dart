import 'package:flutter/material.dart';
import 'package:flutter_animations/src/screens/card.dart';

class Inicio extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(
    color: Colors.blue,
    fontSize: 30.0,
  );

  @override
  Widget build(BuildContext context) {
    final bool shouldWelcomeUser = true;

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Animations"),
          backgroundColor: Colors.orange[300],
        ),
        body: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          primary: false,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            MyCard(
              texto: "AnimatedContainer",
              color_g: 100,
            ),
            MyCard(
              texto: "AnimatedContainer",
              color_g: 200,
            ),
            MyCard(
              texto: "AnimatedContainer",
              color_g: 300,
            ),
            MyCard(
              texto: "AnimatedContainer",
              color_g: 400,
            ),
            MyCard(
              texto: "AnimatedContainer",
              color_g: 500,
            ),
            MyCard(
              texto: "AnimatedContainer",
              color_g: 600,
            ),
          ],
        ));
  }
}
