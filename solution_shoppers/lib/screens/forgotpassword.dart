import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:solution_shoppers/components/roundbutton.dart';

class ForgotPasswrod extends StatefulWidget {
  const ForgotPasswrod({super.key});

  @override
  State<ForgotPasswrod> createState() => _ForgotPasswrodState();
}

class _ForgotPasswrodState extends State<ForgotPasswrod> {
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  String email = "";
  bool showspinner = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot Password")),
      body: ModalProgressHUD(
        inAsyncCall: showspinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          child: Column(children: [
            Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Email',
                          hintText: 'Email'),
                      onChanged: (String value) {
                        email = value;
                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Enter email' : null;
                      },
                    ),
                    RoundButton(
                        title: 'Reset',
                        onPress: () async {
                          if (_formkey.currentState != null) {
                            setState(() {
                              showspinner = true;
                            });
                            try {
                              auth
                                  .sendPasswordResetEmail(
                                      email: emailController.text.toString())
                                  .then((value) {
                                setState(() {
                                  showspinner = false;
                                });
                                toastMessage(
                                    'Please check email, a reset link has been sent to your email');
                              }).onError((e, stackTrace) {
                                toastMessage(e.toString());
                                setState(() {
                                  showspinner = false;
                                });
                              });
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
      ),
    );
  }

  void toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 18,
    );
  }
}
