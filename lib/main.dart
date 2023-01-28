import 'package:flutter/material.dart';
import 'package:news/constants/constants.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/main_screen.dart';
import 'package:news/screens/news_screen.dart';
import 'package:news/screens/splash_screen.dart';
import 'package:news/screens/subtitle_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
