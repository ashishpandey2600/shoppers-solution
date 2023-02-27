import 'package:flutter/material.dart';
import 'package:shoppers_solution/pages/HomeScreen.dart';
import 'package:shoppers_solution/pages/splashcreenpage.dart';

import 'screens/product_details_screen.dart';
import 'screens/product_overview_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.yellowAccent,
        fontFamily: 'Lato'
      ),
      home: SplashScreenPage(),
      routes: {
        ProductScreen.routeName:((context)=> ProductScreen()),
      },
    );
  }
}
