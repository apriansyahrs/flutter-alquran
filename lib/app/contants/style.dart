import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColorLight = Color(0xff672CBC);
Color secondaryColorLight = Color(0xff8789A3);
Color primaryColorDark = Color(0xff091945);
Color secondaryColorDark = Color(0xff7B80AD);
Color whiteColor = Color(0xffFFFFFF);
Color creamColor = Color(0xffF9B091);
Color grayColor = Color(0xffABAFD7);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

ThemeData themeLight = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColorLight,
  scaffoldBackgroundColor: whiteColor,
  appBarTheme: AppBarTheme(
    backgroundColor: whiteColor,
  ),
  textTheme: TextTheme(
    headline5: GoogleFonts.poppins(
      fontSize: 28,
      color: primaryColorLight,
      fontWeight: bold,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20,
      color: primaryColorLight,
      fontWeight: bold,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: medium,
      color: secondaryColorLight,
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 18,
      color: secondaryColorLight,
    ),
    button: GoogleFonts.poppins(
      fontSize: 18,
      color: whiteColor,
      fontWeight: semiBold,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: medium,
      color: whiteColor,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryColorDark,
  ),
);

ThemeData themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: whiteColor,
  scaffoldBackgroundColor: primaryColorDark,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColorDark,
  ),
  textTheme: TextTheme(
    headline5: GoogleFonts.poppins(
      fontSize: 28,
      color: whiteColor,
      fontWeight: bold,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 20,
      color: whiteColor,
      fontWeight: bold,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: medium,
      color: secondaryColorDark,
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 18,
      color: secondaryColorDark,
    ),
    button: GoogleFonts.poppins(
      fontSize: 18,
      color: primaryColorDark,
      fontWeight: semiBold,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: medium,
      color: whiteColor,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: whiteColor,
  ),
);
