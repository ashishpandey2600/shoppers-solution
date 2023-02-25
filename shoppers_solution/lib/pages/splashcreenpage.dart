import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppers_solution/pages/HomeScreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
         
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 2, 110, 198),
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
