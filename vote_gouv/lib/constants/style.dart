import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:vote_gouv/constants/colors.dart';

abstract class AppStyle {
  static const h1Light = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      // height: 38,
      // letterSpacing: 20,
      color: AppColor.accent_1);

  static const h1Dark = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      // height: 38,
      // letterSpacing: 20,
      color: AppColor.text);

  static const h2 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      // letterSpacing: 20,
      // height: 32,
      color: AppColor.text);

  static const h3 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      // letterSpacing: 20,
      // height: 20,
      color: AppColor.text);

  static const text = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      // letterSpacing: 20,
      // height: 20,
      color: AppColor.text);

  static const bodyText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      // letterSpacing: 20,
      // height: 20,
      color: AppColor.text);
}
