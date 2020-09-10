import 'package:flutter/material.dart';

class Tarjeta {
  final int duracion;
  final Color color;
  final String texto;
  final Color color_t;
  final String familia;
  final String descripcion;

  Tarjeta(this.duracion, this.color, this.texto, this.color_t, this.familia,
      this.descripcion);
}

List<Tarjeta> tarjetas = [
  Tarjeta(500, Color(0xFF3D82AE), "FadeOutLeft", Colors.white, "Familia Fade",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(700, Color(0xFFD3A984), "FadeOutRight", Colors.white, "Familia Fade",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(
      900,
      Color(0xFF989493),
      "ElasticInLeft",
      Colors.white,
      "Familia Elastic",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(
      1100,
      Color(0xFFFB7883),
      "ElasticInRight",
      Colors.white,
      "Familia Elastic",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(1300, Color(0xFFAEAEAE), "FadeInLeft", Colors.white, "Familia Fade",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(1400, Color(0xFFD3A984), "FadeInRight", Colors.white, "Familia Fade",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(
      1600,
      Color(0xFF3D82AE),
      "BounceInLeft",
      Colors.white,
      "Familia Bounce",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(
      1800,
      Color(0xFF989493),
      "BounceInRight",
      Colors.white,
      "Familia Bounce",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(1900, Color(0xFFFB7883), "FadeInDown", Colors.white, "Familia Fade",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false"),
  Tarjeta(2100, Color(0xFFAEAEAE), "FadeInUp", Colors.white, "Familia Fade",
      "Now Attention Seekers can be stopped (even if they are in infinite mode). You just have to set the animate property from true to false")
];
