import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xffD4236B);
Color secondaryColor = primaryColor.withOpacity(0.1); /* Warna form input */
Color subtitleColor = Color(0xff504F5E);
Color whiteColor = Color.fromARGB(255, 238, 236, 255);
// Color primaryTextColor = Color(0xff1F1D2B);
// Color secondaryTextColor = Color(0xff2B2937);

// Color alertColor = Color(0xffED6363);
// Color priceColor = Color(0xff2C96F1);
// Color backgroundColor1 = Color(0xff1F1D2B);
// Color backgroundColor2 = Color(0xff2B2937);
// Color backgroundColor3 = Color(0xff242231);
// Color primaryTextColor = Color(0xffF1F0F2);
// Color secondaryTextColor = Color(0xff999999);

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

// TextStyle priceTextStyle = GoogleFonts.roboto(
//   color: priceColor,
// );

// TextStyle purpleTextStyle = GoogleFonts.roboto(
//   color: primaryColor,
// );

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
