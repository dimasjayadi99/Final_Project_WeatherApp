import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pantera/app/core/constant/string_const.dart';

class StyleConst {
  StyleConst._();

  static const primaryColor = 0XFF7ED957;
  static const secondaryColor = 0XFF336699;
  static const thirdColor = 0XFFDE005D;
  static const whiteColor = 0XFFFFFFFF;
  static const blackColor = 0XFF212121;

  static Text logoText = const Text(
    StringConst.appName,
    style: TextStyle(
        fontFamily: 'MuseoModerno', color: Color(primaryColor), fontSize: 32),
  );
  static Text taglineText = const Text(
    StringConst.tagline,
    style: TextStyle(color: Color(secondaryColor), fontSize: 14),
  );

  static TextTheme myTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: const Color(blackColor)),
    displayMedium: GoogleFonts.poppins(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: const Color(blackColor)),
    displaySmall: GoogleFonts.poppins(
        fontSize: 47,
        fontWeight: FontWeight.w400,
        color: const Color(blackColor)),
    headlineLarge: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.25,
        color: const Color(blackColor)),
    headlineMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: const Color(blackColor)),
    headlineSmall: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
        color: const Color(blackColor)),
    titleLarge: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
        color: const Color(blackColor)),
    titleMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: const Color(blackColor)),
    titleSmall: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
        color: const Color(blackColor)),
    bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: const Color(blackColor)),
    bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: const Color(blackColor)),
    bodySmall: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: const Color(blackColor)),
    labelLarge: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: const Color(blackColor)),
    labelMedium: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: const Color(blackColor)),
    labelSmall: GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: const Color(blackColor)),
  );
}
