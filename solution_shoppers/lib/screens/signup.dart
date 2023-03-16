import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:solution_shoppers/components/roundbutton.dart';
import 'package:solution_shoppers/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = "";
  String password = "";
  final _formkey = GlobalKey<FormState>();
  bool showspinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp")),
      body: ModalProgressHUD(
        inAsyncCall: showspinner,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    onChanged: (String value) {
                      email = value;
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'Enter Email' : null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.password),
                    ),
                    onChanged: (String value) {
                      password = value;
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'Enter Password' : null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundButton(
                      title: "Signin",
                      onPress: () async {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            showspinner = true;
                          });
                          try {
                            final user =
                                await auth.createUserWithEmailAndPassword(
                                    email: email.toString().trim(),
                                    password: password.toString().trim());
                            if (user != null) {
                              print("sucess");
                              toastMessage('User successfully created');
                              setState(() {
                                showspinner = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogIn()));
                            }
                          } catch (e) {
                            print(e.toString());
                            toastMessage(e.toString());
                            setState(() {
                              showspinner = false;
                            });
                          }
                        }
                      })
                ],
              ))
        ]),
      ),
    );
  }

  toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.red,
      fontSize: 18,
    );
  }
}
