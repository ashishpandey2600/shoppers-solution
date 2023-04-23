import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:solution_shoppers/drawer/about.dart';
import 'package:solution_shoppers/drawer/contact.dart';
import 'package:solution_shoppers/drawer/favourite.dart';
import 'package:solution_shoppers/drawer/myaccount.dart';
import 'package:solution_shoppers/drawer/mycart.dart';
import 'package:solution_shoppers/drawer/myorders.dart';
import 'package:solution_shoppers/drawer/nutritionchart.dart';
import 'package:solution_shoppers/screens/optionscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        drawer: Drawer(
          child: SingleChildScrollView(
              child: Column(
            children: [
              ListTile(
                title: Text("My Orders"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Orders()));
                },
              ),
              ListTile(
                title: Text("My Cart"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
              ),
              ListTile(
                title: Text("My Favourites"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favourite()));
                },
              ),
              ListTile(
                title: Text("My Account"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
              ),
              ListTile(
                title: Text("Nutrition Chart"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NutritionChart()));
                },
              ),
              ListTile(
                title: Text("Contact"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact()));
                },
              ),
              ListTile(
                title: Text("About"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
              ),
            ],
          )),
        ),
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Container(
          child: Column(
            children: [
              Card(
                  child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/m.png'), fit: BoxFit.fill)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text("Buy Now!!"), Icon(Icons.favorite)],
                  ),
                ),
              )),
              Center(
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Text(
                    "Buy Now!!",
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  logout() {
    auth.signOut();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OptionScreen()));
  }
}
