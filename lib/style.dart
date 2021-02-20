import 'package:flutter/material.dart';

abstract class styleText {
  static const TextStyle regularText = TextStyle(
      fontFamily: "Almarai",
      fontSize: 16,
      letterSpacing: 1,
      color: Color(0xff1A1917));

  static const TextStyle boldText = TextStyle(
      fontFamily: "Almarai",
      fontSize: 20,
      color: Color(0xff1A1917),
      fontWeight: FontWeight.bold);

  static const TextStyle extraBoldText = TextStyle(
      fontFamily: "Almarai",
      fontSize: 19,
      color: Color(0xff1A1917),
      fontWeight: FontWeight.w800);

  static const TextStyle extraRegularText = TextStyle(
      fontFamily: "Almarai",
      fontSize: 12,
      letterSpacing: 1,
      color: Color(0xff1A1917));

  static const TextStyle pageTitle =
      TextStyle(fontFamily: "Almarai", fontSize: 30, color: Color(0xff1A1917));
}
