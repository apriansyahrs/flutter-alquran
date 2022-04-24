import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColorLight = Color(0xff672CBC);
Color secondaryColorLight = Color(0xff8789A3);
Color primaryColorDark = Color(0xff091945);
Color secondaryColorDark = Color(0xff7B80AD);
Color whiteColor = Color(0xffFFFFFF);
Color creamColor = Color(0xffF9B091);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryColorLight,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryColorLight,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

ThemeData appLight = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: primaryColorLight,
  scaffoldBackgroundColor: whiteColor,
  appBarTheme: AppBarTheme(
    backgroundColor: whiteColor,
  ),
  textTheme: TextTheme(
    headline6: GoogleFonts.poppins(
      fontSize: 28,
      color: primaryColorLight,
      fontWeight: bold,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 18,
      color: secondaryColorLight,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 18,
      color: whiteColor,
      fontWeight: semiBold,
    ),
  ),
);

ThemeData appDark = ThemeData(
  primaryColor: whiteColor,
  scaffoldBackgroundColor: primaryColorDark,
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColorDark,
  ),
  textTheme: TextTheme(
    headline6: GoogleFonts.poppins(
      fontSize: 28,
      color: whiteColor,
      fontWeight: bold,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 18,
      color: secondaryColorDark,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 18,
      color: primaryColorDark,
      fontWeight: semiBold,
    ),
  ),
);
