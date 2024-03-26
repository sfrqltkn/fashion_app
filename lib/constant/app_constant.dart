import 'package:flutter/material.dart';

class Constant {
  //COLOR
  static const MaterialColor iconColor = Colors.grey;
  //FONT FAMİLY
  static const String family = "Montserrat";

  //TextStyle
  static const TextStyle contentText = TextStyle(
    fontFamily: family,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle followText = TextStyle(
    fontFamily: family,
    color: Colors.white,
  );
  static const TextStyle cardDesc = TextStyle(
    fontSize: 13,
    fontFamily: family,
    color: Colors.grey,
    fontWeight: FontWeight.w800,
  );
  static const TextStyle cardLabel = TextStyle(
      fontFamily: family,
      fontSize: 10,
      color: Colors.brown,
      fontWeight: FontWeight.w800);

  static const TextStyle interactionText =
      TextStyle(fontFamily: family, fontSize: 16);

  static const TextStyle personName = TextStyle(
    fontSize: 16,
    fontFamily: family,
    color: Colors.grey,
    fontWeight: FontWeight.w800,
  );
  //CONTAİNER
  static BoxDecoration containerFollow = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.brown,
  );
}
