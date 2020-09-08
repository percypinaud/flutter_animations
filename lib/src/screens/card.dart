import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int color_g;
  final String texto;

  MyCard({this.color_g, this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: Text(texto),
        color: Colors.grey[color_g],
      ),
    );
  }
}
