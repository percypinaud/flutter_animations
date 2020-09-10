import 'package:flutter/material.dart';
import 'package:flutter_animations/src/details/body.dart';
import 'package:flutter_animations/src/models/tarjetas.dart';

class Detalles extends StatelessWidget {
  final Tarjeta tarjeta;

  const Detalles({Key key, this.tarjeta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tarjeta.color,
      appBar: buildAppBar(context),
      body: Body(
        tarjeta: tarjeta,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: tarjeta.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
