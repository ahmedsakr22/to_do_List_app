import 'package:flutter/material.dart';
import 'package:to_do_list_app/shared/styles/colors.dart';

class MyThemeData {
  // ثوابت لأحجام الخطوط
  static const double _fontSizeLarge = 24;
  static const double _fontSizeMedium = 20;
  static const double _fontSizeSmall = 18;

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: greenBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: colorWhite,
        secondary: greenColor,
        onSecondary: colorBlack,
        error: Colors.red,
        onError: Colors.white,
        background: greenBackground,
        onBackground: colorBlack,
        surface: Colors.grey,
        onSurface: colorWhite,
      ),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: colorWhite,
          fontSize: _fontSizeMedium,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: colorWhite,
        ),
        centerTitle: false,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: colorWhite,
          fontSize: _fontSizeLarge,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TextStyle(
          color: primaryColor,
          fontSize: _fontSizeMedium,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          color: greenColor,
          fontSize: _fontSizeSmall,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
      )
      // يمكنك إضافة المزيد من العناصر هنا مثل:
      // buttonTheme: ButtonThemeData(...),
      // inputDecorationTheme: InputDecorationTheme(...),
      );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: primaryColorDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: primaryColorDark,
      onPrimary: colorWhite,
      secondary: greenColor,
      onSecondary: colorWhite,
      error: Colors.red,
      onError: Colors.white,
      background: primaryColorDark,
      onBackground: colorWhite,
      surface: Colors.grey,
      onSurface: colorWhite,
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: primaryColorDark,
        fontSize: _fontSizeMedium,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: primaryColorDark,
      ),
      centerTitle: false,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: primaryColorDark,
        fontSize: _fontSizeLarge,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: primaryColor,
        fontSize: _fontSizeMedium,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: greenColor,
        fontSize: _fontSizeSmall,
        fontWeight: FontWeight.bold,
      ),
    ),
    // يمكنك إضافة المزيد من العناصر هنا مثل:
    // buttonTheme: ButtonThemeData(...),
    // inputDecorationTheme: InputDecorationTheme(...),
  );
}
