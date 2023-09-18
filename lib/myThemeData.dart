import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xffB7935F);
  static const Color blackColor = Color(0xff242424);
  static const Color whiteColor = Color(0xffffffff);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blackColor),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      selectedLabelStyle: GoogleFonts.elMessiri(
          fontSize: 15, fontWeight: FontWeight.bold, color: blackColor),
    ),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: blackColor),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 18, fontWeight: FontWeight.bold, color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: blackColor),
        titleLarge: GoogleFonts.koulen(
          fontSize: 30,
        )),
  );
  static ThemeData darkTheme = ThemeData();
}
