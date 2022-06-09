import 'package:flutter/material.dart';

var darkThemeData = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: Colors.deepOrange),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.white,
  ),
  textTheme: const TextTheme(
    headline5: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
);
