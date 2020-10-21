import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme() {
  // Theme definition.
  return ThemeData(
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      bodyText2: GoogleFonts.robotoCondensed(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
        color: Colors.white,
      ),
      bodyText1: GoogleFonts.robotoCondensed(
        fontSize: 18,
        fontWeight: FontWeight.w100,
        letterSpacing: 1,
        color: Colors.white,
      ),
      button: GoogleFonts.robotoCondensed(
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
  );
}
