import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorSchemeSeed: Colors.brown,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    splashColor: Colors.transparent,
    highlightColor: Colors.grey.shade300,
    scaffoldBackgroundColor: const Color(0xFFEDEADE),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white.withAlpha(200),
      surfaceTintColor: Colors.white.withAlpha(200),
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black87),
    ),
    fontFamily: 'PT_Sans',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 40,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        fontSize: 15,
      ),
      bodyMedium: TextStyle(
        fontSize: 13,
      ),
      bodySmall: TextStyle(
        fontSize: 11,
      ),
      labelSmall: TextStyle(
        fontSize: 9,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF0A255C),
      size: 20,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  /*  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      background: const Color(0xFF141414),
      onBackground: Colors.white,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.lightBlue,
      onSecondary: Colors.black,
      surface: Colors.grey.shade900,
      onSurface: Colors.grey,
      error: Colors.red,
      onError: Colors.white,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    splashColor: Colors.transparent,
    highlightColor: Colors.grey.shade800,
    scaffoldBackgroundColor: const Color(0xFF141414),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.black.withAlpha(180),
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white70),
    ),
    fontFamily: 'Montserrat',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        headline2: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        headline3: TextStyle(fontSize: 18, color: Colors.white),
        headline4: TextStyle(fontSize: 16, color: Colors.white),
        headline5: TextStyle(fontSize: 22, color: Colors.white),
        headline6: TextStyle(fontSize: 16, color: Colors.white),
        subtitle1: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        subtitle2: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        bodyText1: TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        bodyText2: TextStyle(fontSize: 12, color: Colors.white),
        labelMedium: TextStyle(fontSize: 12, color: Colors.white),
        button: TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black)),
    iconTheme: IconThemeData(color: Colors.blue.shade100),
    cardTheme: CardTheme(
      color: Colors.grey.shade900,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ); */
}
