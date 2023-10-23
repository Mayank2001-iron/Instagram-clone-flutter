import 'package:flutter/material.dart';

ThemeData lightTheme=ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color:Colors.black),
    titleTextStyle: TextStyle(color: Colors.black,)

    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      // iconTheme: IconThemeData(color:Colors.black),
      // labelTextStyle: TextStyle(),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.grey[300]!,
      secondary: Colors.grey[600]!,
      tertiary: Colors.grey[700]!,
      
      
    ),

);