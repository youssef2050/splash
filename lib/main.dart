import 'package:flutter/material.dart';
import 'package:splash/pages/splash_page.dart';
import 'package:splash/themes/dark_theme.dart';
import 'package:splash/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.dark,
      home: const SplashPage(),
    );
  }
}
