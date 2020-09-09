import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int color_b;
  final Widget texto;

  MyCard({this.color_b, this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        child: texto,
        color: Colors.grey[color_b],
      ),
    );
  }
}
