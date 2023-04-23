import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution_shoppers/controller/product_tile.dart';
import 'package:solution_shoppers/drawer/about.dart';
import 'package:solution_shoppers/drawer/contact.dart';
import 'package:solution_shoppers/drawer/favourite.dart';
import 'package:solution_shoppers/drawer/myaccount.dart';
import 'package:solution_shoppers/drawer/mycart.dart';
import 'package:solution_shoppers/drawer/myorders.dart';
import 'package:solution_shoppers/drawer/nutritionchart.dart';
import 'package:solution_shoppers/model/cart_model.dart';
import 'package:solution_shoppers/screens/cartPage.dart';
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
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_bag),
          onPressed: () {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => CartPage()));
          }),
      key: _key,
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text("Products"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NutritionChart()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
            ),
          ],
        )),
      ),
      appBar: AppBar(
          title: Row(
        children: [
          Expanded(child: Text("Products")),
          IconButton(
              onPressed: () {
                logout();
              },
              icon: Icon(Icons.logout))
        ],
      )),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Let's order the pure and healthy Oil... ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Pure oil",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopItem.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return ProductTile(
                        itemName: value.shopItem[index][0],
                        itemPrice: value.shopItem[index][1],
                        imagePath: value.shopItem[index][2],
                        color: value.shopItem[index][3],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addItemToCart(index);
                          SnackBarItem(index);
                        });
                  });
            },
          ))
        ],
      )),
    );
  }

  logout() {
    auth.signOut();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OptionScreen()));
  }

  SnackBarItem(int index) {
    final snackBar = SnackBar(
      content: const Text('Item added to cart!!'),
      action: SnackBarAction(
        label: '',
        onPressed: () => Provider.of<CartModel>(context, listen: false)
            .removeItemFromCart(index),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
