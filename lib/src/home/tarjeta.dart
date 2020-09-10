import 'package:flutter/material.dart';
import 'package:flutter_animations/src/models/tarjetas.dart';

class MyTarjeta extends StatelessWidget {
  final Widget texto;
  final Function press;
  final Tarjeta tarjeta;

  const MyTarjeta({Key key, this.tarjeta, this.texto, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          alignment: Alignment.center,
          child: texto,
          decoration: BoxDecoration(
            color: tarjeta.color,
            borderRadius: BorderRadius.circular(16),
          ),
        ));
  }
}
