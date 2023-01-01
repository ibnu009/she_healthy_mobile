import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String poppins = 'Poppins';
double defaultMargin = 30.0;

Map<int, Color> color =
{
  50:const Color.fromRGBO(104,108,255, .1),
  100:const Color.fromRGBO(104,108,255, .2),
  200:const Color.fromRGBO(104,108,255, .3),
  300:const Color.fromRGBO(104,108,255, .4),
  400:const Color.fromRGBO(104,108,255, .5),
  500:const Color.fromRGBO(104,108,255, .6),
  600:const Color.fromRGBO(104,108,255, .7),
  700:const Color.fromRGBO(104,108,255, .8),
  800:const Color.fromRGBO(104,108,255, .9),
  900:const Color.fromRGBO(104,108,255, 1),
};

MaterialColor primaryThemeColor = MaterialColor(0xFF1EC28B, color);

class AppTheme {
  static const Color primaryColor = Color(0xFF686CFF);
  static const Color primaryColorLighter = Color(0xFF7478EA);
  static const Color primaryColorDarker = Color(0xFF4548C5);
  static const Color greyDark = Color(0xFF504F5E);
  static const Color fieldColor = Color(0xFFF3F2F2);
  static const Color alert = Color(0xffED6363);
  static const Color redColor = Color(0xffF30A0A);
  static const Color primaryColorBrighter = Color(0xFFD7F4E6);
  static const Color lightGrey = Color(0xffE8E5E5);
  static const Color yellowStar = Color(0xffFCAE03);
  static const Color borderColor = Color(0xFFCECECE);
  static const Color canvasColor = Color(0xFFEEEEF5);
  static const Color neutralColor = Color(0xFFF4EFF4);

  static TextStyle get primaryTextStyle => GoogleFonts.getFont(
    poppins,
    color: Colors.black,
  );

  static TextStyle get priceTextStyle => GoogleFonts.getFont(
    poppins,
    color: AppTheme.primaryColor,
  );

  static TextStyle get alertTextStyle => GoogleFonts.getFont(
    poppins,
    color: AppTheme.alert,
  );

  static TextStyle get title => GoogleFonts.getFont(
    poppins,
    color: AppTheme.primaryColorDarker,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static TextStyle get title2 => GoogleFonts.getFont(
    poppins,
    color: AppTheme.primaryColorDarker,
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );

  static TextStyle get bodyText => GoogleFonts.getFont(poppins,
      color: AppTheme.greyDark, fontWeight: FontWeight.w400, fontSize: 15);

  static TextStyle get title1 => GoogleFonts.getFont(
    poppins,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static TextStyle get smallTitle => GoogleFonts.getFont(
    poppins,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle get smallTitleRed => GoogleFonts.getFont(
    poppins,
    color: redColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle get smallTitlePrimaryColor => GoogleFonts.getFont(
    poppins,
    color: primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle get subTitle => GoogleFonts.getFont(
    poppins,
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static TextStyle get subTitleButton => GoogleFonts.getFont(
    poppins,
    color: primaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static TextStyle get text1 => GoogleFonts.getFont(
      poppins,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 14);

  static TextStyle get smallBodyGrey => GoogleFonts.getFont(
      poppins,
      color: Colors.black54,
      fontSize: 12);

  static TextStyle get darktitle => GoogleFonts.getFont(
    poppins,
    color: AppTheme.greyDark,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );
}

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;