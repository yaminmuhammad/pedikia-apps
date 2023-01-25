import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xffD4236B);
Color secondaryColor = primaryColor.withOpacity(0.1); /* Warna form input */
Color subtitleColor = Color(0xff504F5E);
Color whiteColor = Color.fromARGB(255, 238, 236, 255);

TextStyle titleTextStyle = GoogleFonts.roboto(
  fontSize: 24,
  fontWeight: semiBold,
);

TextStyle primaryTextStyle = GoogleFonts.roboto(
  color: primaryColor,
);

TextStyle secondaryTextStyle = GoogleFonts.roboto(
  color: secondaryColor,
);

TextStyle subtitleTextStyle = GoogleFonts.roboto(
  color: subtitleColor,
);

TextStyle whiteTextStyle = GoogleFonts.roboto(
  color: whiteColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
