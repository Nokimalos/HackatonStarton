import 'package:flutter/material.dart';

const Color blackRed = Color.fromRGBO(120, 0, 0, 1);
const Color clearRed = Color.fromRGBO(193, 18, 31, 1);
const Color clear = Color.fromRGBO(253, 240, 213, 1);
const Color blackBlue = Color.fromRGBO(0, 48, 73, 1);
const Color clearBlue = Color.fromRGBO(102, 155, 188, 1);


const Color pClearGreen = Color.fromRGBO(57, 138, 50, 0.4);
const Color pBlackRed = Color.fromRGBO(220, 0, 0, 0.4);
const Color pClearRed = Color.fromRGBO(255, 74, 74, 0.4);
const Color pClear = Color.fromRGBO(253, 240, 213, 0.4);
const Color pBlackBlue = Color.fromRGBO(1, 4, 74, 0.4);
const Color pClearBlue = Color.fromRGBO(135, 140, 255, 0.4);
const Color grise = Color.fromRGBO(97, 97, 97, 0);


abstract class AppColor {
  static const LinearGradient gradient = LinearGradient(
    colors: [
      Colors.white,
      Color(0xFFCBAAFF),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const Color primary = Color(0xFF935DE6);
  static const Color secondary = Color(0xFF0C0A19);
  static const Color text = Color(0xFF32303d);
  static const Color accent = Color(0xFFFFFFFF);
  static const Color accent_1 = Color(0xFFefeff6);
  static const Color accent_2 = Color(0xFFeef6ff);
  static const Color accent_3 = Color(0xFFfff7f4);
  static const Color accent_4 = Color(0xFFffe4ea);
}