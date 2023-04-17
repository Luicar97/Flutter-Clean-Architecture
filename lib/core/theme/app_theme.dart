import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData commonTheme = ThemeData.light().copyWith(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'Poppins', color: AppColors.black, fontSize: 20),
      titleMedium: TextStyle(
          fontFamily: 'Poppins',
          color: Color(0xFF494949),
          fontWeight: FontWeight.w600,
          fontSize: 20),
      titleSmall: TextStyle(
          fontFamily: 'Poppins', color: AppColors.black, fontSize: 12),
      bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          color: Color(0xFF494949),
          fontSize: 18),
      bodyMedium: TextStyle(
          fontFamily: 'Poppins', color: Color(0xFF494949), fontSize: 12),
      bodySmall: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          color: Color(0xFF494949),
          fontSize: 12),
    ),
    primaryTextTheme: ThemeData.light().textTheme.apply(fontFamily: 'Poppins'),
    primaryColor: AppColors.black,
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
        backgroundColor: AppColors.lightBlue,
        titleTextStyle: const TextStyle(
            fontFamily: 'Poppins', color: AppColors.black, fontSize: 20)),
    secondaryHeaderColor: AppColors.lightBlue,
  );
}

abstract class AppColors {
  // Blue
  static const Color blue = Color(0xFF52829F);
  static const Color darkBlue = Color(0xFF0B5C8D);
  static const Color darkWhiteBlue = Color(0xFF9FDFDD);
  static const Color lightBlue = Color(0xFFD8DEFF);
  static const Color lightCyan = Color(0xFFCCE0E6);
  static const Color mediumBlue = Color(0xFFDFEAF2);
  static const Color mediumBlueDark = Color(0xFFAAC3D8);
  static const Color whiteblue = Color(0xFFDFF5F4);
  static const Color whiteblue75 = Color(0xBFDFF5F4);
  static const Color opaqueBlue = Color(0xFF001B2C);

  // Orange
  static const Color lightOrange = Color(0xFFF9C232);
  static const Color orange = Color(0xFFE86544);

  // Green
  static const Color darkGreen = Color(0xFF326973);
  static const Color lightGreen = Color(0xFF77D2CF);
  static const Color verylightGreen = Color(0xFFE0F5F3);
  static const Color strongGreen = Color(0xFF54B9BC);
  static const Color mediumGreen = Color(0xFF0F95A0);

  // White
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray = Color(0xFFF8FAFD);

  // Grey
  static const Color grey = Color(0xFFE2E2E2);
  static const Color mediumGrey = Color(0xFFB9B9B9);
  static const Color darkGrey = Color(0xFFA3B5CC);

  // Others
  static const Color black = Color(0xFF343434);
  static const Color transparent = Color(0x00000000);
  static const Color red = Color(0xFFFF0000);
  static const Color mediumRed = Color(0xFFE86544);
  static const Color dotsColor = Color(0xFF3FBAB1);
  static const Color subsecondaryButton = Color(0xFFE8F7F8);
  static const Color purple = Color(0xFF6F2AA6);
  static const Color hiperlink = Color(0xFF0F95A0);
}
