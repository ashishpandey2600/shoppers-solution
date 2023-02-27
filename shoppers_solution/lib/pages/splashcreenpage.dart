import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppers_solution/pages/HomeScreen.dart';

import '../screens/product_overview_screen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
         
          MaterialPageRoute(
            builder: (context) => ProductOverview(),
          ));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 219, 209, 20),
        child: Center(
          child: Text(
            "Shopper's \nSolution",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
      
    );
  }
}
