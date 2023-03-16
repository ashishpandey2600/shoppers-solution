import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
            DrawerHeader(
              child: Container(
                child: Text("ashish Pandey"),
                decoration: BoxDecoration(color: Colors.deepOrange),
              ),
            ),
            ListTile(
              title: Text("My Orders"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Orders()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Favourite()));
              },

            ),
            ListTile(
              title: Text("My Account"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Account()));
              },

            ),
            ListTile(
              title: Text("Nutrition Chart"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NutritionChart()));
              },

            ),
            ListTile(
              title: Text("Contact"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Contact()));
              },

            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },

            ),
            
            
          ],
        )),
      ),
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.person_add_alt_1))),
        automaticallyImplyLeading: false,
        title: Text("HomePage"),
        actions: [
          IconButton(
              onPressed: () {
                logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Text("You are on the home page"),
    );
  }

  logout() {
    auth.signOut();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OptionScreen()));
  }
}
