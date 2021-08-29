import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: kTitleTextColor),
    textTheme: TextTheme(
      headline6: GoogleFonts.montserrat(color: kTitleTextColor, fontSize: 18),
    ),
  );
}
