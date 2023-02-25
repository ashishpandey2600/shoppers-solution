import 'package:flutter/material.dart';
import 'package:shoppers_solution/pages/HomeScreen.dart';
import 'package:shoppers_solution/pages/splashcreenpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenPage(),
    );
  }
}
