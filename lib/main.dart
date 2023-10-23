import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:flutter_application_1/dark_theme.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/UserHome.dart';
import 'package:flutter_application_1/light_theme.dart';
import 'package:flutter_application_1/reels.dart';
import 'package:flutter_application_1/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme:lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}

