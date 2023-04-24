import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:solution_shoppers/screens/homepage.dart';
import 'package:solution_shoppers/screens/optionscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    final user = auth.currentUser;
    if (user != null) {
      Timer(
          Duration(seconds: 2),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage())));
    } else {
      Timer(
          Duration(seconds: 2),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => OptionScreen())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      // Image(
      //   height: MediaQuery.of(context).size.height * .1,
      //   width: MediaQuery.of(context).size.width * .2,
      //   image: AssetImage('asstes/g.png'),
      // ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Prabhu Dhan",
            style: TextStyle( fontStyle: FontStyle.italic,
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      )
        ],
      ),
    );
  }
}
