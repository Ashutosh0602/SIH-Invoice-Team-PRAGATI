// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:invoice_app_sih/utils/hex_color.dart';

class Themes {
  final lightTheme = ThemeData().copyWith(
    // app bar background
    primaryColorLight: Colors.white,

    //app bar Icon
    primaryColorDark: Colors.black,

    // Background color
    scaffoldBackgroundColor: Colors.white,

    accentColor: Colors.orange[50],
    shadowColor: Colors.black12,
    dividerColor: Colors.grey,

    // Orange Icon
    primaryColor: HexColor('#E6284A'),

    // primaryColorBrightness: Brightness.light,

    cardColor: Colors.orange,

    textTheme: TextTheme(
      // App bar text
      headline1: const TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
      // Hint text
      headline2: const TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black),
      // Button text
      headline3: const TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
      // Big text
      headline4: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
      // Form field text
      headline5: const TextStyle(fontSize: 14.0, color: Colors.black),
      headline6: const TextStyle(
          fontSize: 12.0, fontStyle: FontStyle.italic, color: Colors.black),
      // label Text
      bodyText1: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Hind',
          color: Colors.black),
      // Coloured label text
      bodyText2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          fontFamily: 'Hind',
          color: HexColor('#E6284A')),
      subtitle1: const TextStyle(
          fontSize: 14.0, fontFamily: 'Hind', color: Colors.black54),
      // error text
      subtitle2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10.0,
          fontFamily: 'Hind',
          color: HexColor('#E6284A')),
    ),
    // Theme for TextButton
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: HexColor('#E6284A'))),

    backgroundColor: Colors.black,

    // appBarTheme: AppBarTheme(
    //   backgroundColor: Colors.black,
    //   textTheme: TextTheme(
    //     headline1: TextStyle(color: Colors.black),
    //   ),
    // ),
    buttonColor: Colors.orange,
    // textTheme: TextTheme(headline1: TextStyle(color: Colors.black)),
  );

  final darkTheme = ThemeData.dark().copyWith(
    // app bar background
    primaryColorLight: Colors.black,

    //app bar Icon
    primaryColorDark: Colors.white,

    // Background color
    scaffoldBackgroundColor: Colors.black,

    accentColor: Colors.orange[50],
    shadowColor: Colors.white12,
    dividerColor: Colors.grey,

    // Orange Icon
    primaryColor: Colors.orange,

    // Theme for TextButton
    // textButtonTheme: TextButtonThemeData(
    //     style: TextButton.styleFrom(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         backgroundColor: Colors.orange[500])),

    textTheme: const TextTheme(
      // App bar text
      headline1: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
      // Label
      headline2: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
      // Button text
      headline3: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline4: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
      headline5: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText1:
          TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
      bodyText2:
          TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.black),
      subtitle1: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white54),
      subtitle2:
          TextStyle(fontSize: 14.0, fontFamily: 'Hind', color: Colors.white),
    ),
  );
}
