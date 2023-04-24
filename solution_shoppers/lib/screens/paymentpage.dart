import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
//payment intent Step 1
  late Map<String, dynamic> paymentIntent;

  Future<void> payment() async {
    try {
      Map<String, dynamic> body = {
        'amount': 10000, //its 100.00
        'currency': 'INR',
      };
      var response = await http.post(
          Uri.parse('https://api.stipe.com/v1/payment_intents'),
          headers: {
            'Authprization': 'Screat key', //write the secreat key
            'Content-type': 'application/x-www-form-urlencoded'
          });
      paymentIntent = json.decode(response.body);
    } catch (e) {
      throw Exception(e);
    }
    //step 2 Initialize payment sheet

    await Stripe.instance
        .initPaymentSheet(
            paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent['client_secret'],
          style: ThemeMode.light,
          merchantDisplayName: 'Shoppers Solution',
        ))
        .then((value) => {});

    //Step 3 Display payment sheet So the user can make payment

    try {
      await Stripe.instance.presentPaymentSheet().then((value) => {
        //Success state
        print("payment success")
      }); //where u wana u redirect to your user after the payment

    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stripe payment")),
      body: Center(
          child: TextButton(
        child: Text("Buy Now!!"),
        onPressed: () {
          payment();
        },
      )),
    );
  }
}
