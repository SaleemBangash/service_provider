import 'package:flutter/material.dart';

class AppTheme {
  static const _primaryColor = Color(0xff27AA9C);
  // static const _primaryColor = Color(0xffac9770);

  static data() => ThemeData(
        scaffoldBackgroundColor: Color(0xfffdfdfd),

        fontFamily: "Rubik",
        primaryColor: _primaryColor,
        // primarySwatch: Colors.orange,
        textTheme: TextTheme(
          bodyText2: _normalStyle(),
          headline3: _invoiceStyle(),
          headline1: _titleStyle(),
          headline2: _boldText(),
        ),
        appBarTheme: _appBarTheme(),
        // tabBarTheme: TabBarTheme(indicator: Decoration())
      );

  static TextStyle _normalStyle() => const TextStyle(
        fontSize: 15,
        fontFamily: "Rubik",
        color: Colors.black,
      );
  static TextStyle _titleStyle() => const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w900, color: Colors.black);
  static TextStyle _boldText() => const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w900, color: Colors.black);
  static TextStyle _invoiceStyle() =>
      const TextStyle(fontSize: 13, color: Colors.black);

  static AppBarTheme _appBarTheme() => AppBarTheme(
      titleTextStyle: _titleStyle(),
      elevation: 0,
      color: Colors.white,
      toolbarTextStyle: _titleStyle(),
      centerTitle: true);
}
