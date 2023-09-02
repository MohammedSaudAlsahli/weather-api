import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff2d3340),
  ),
  colorScheme: ColorScheme.dark(
      background: const Color(0xff2d3340),
      primary: Colors.grey[900]!,
      secondary: Colors.grey[800]!),
);
