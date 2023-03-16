import 'package:flutter/material.dart';
import 'package:solution_shoppers/components/roundbutton.dart';
import 'package:solution_shoppers/screens/login.dart';
import 'package:solution_shoppers/screens/signup.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({super.key});

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn/SignUp"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(100),
              child: Image(image: AssetImage("assets/f.png")),
            ),
            SizedBox(
              height: 20,
            ),
            RoundButton(
                title: "Login",
                onPress: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LogIn()));
                }),
            SizedBox(
              height: 20,
            ),
            RoundButton(
                title: "Signup",
                onPress: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SignUp()));
                })
          ]),
        ),
      ),
    );
  }
}
