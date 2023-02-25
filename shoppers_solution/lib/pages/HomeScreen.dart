import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppers_solution/pages/Contact.dart';
import 'package:shoppers_solution/pages/My_Account.dart';
import 'package:shoppers_solution/pages/My_Setting.dart';
import 'package:shoppers_solution/pages/allcategories.dart';

import 'loginScreen.dart';
import 'mycart.dart';
import 'myorder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Shoppers solution"),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              icon: Icon(Icons.login),
              label: Text("login"),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Icon(Icons.person),
                  Text("Ashish Mradul Avadhesh"),
                  ListTile(
                    title: Text(
                      "view profile",
                      style: TextStyle(fontSize: 10),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("All Categories"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllCategories(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Order"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyOrder(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Cart"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCart(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Account"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyAccount(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Setting"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySetting(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Contact"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Contact(),
                  ),
                );
              },
            ),
            ElevatedButton(onPressed: () {}, child: Text("Logout")),
          ],
        ),
      ),
      body: Center(child: ListView(
        children: [
           Container(padding: EdgeInsets.all(10),
           child:
                 Card( 
                  color: Colors.blue,
            borderOnForeground: false,
            elevation: 50,
           shadowColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              child: Text("Product 1",style: TextStyle(fontSize: 20,color: Colors.black),),
                width: 450,
          height: 300,
          padding: EdgeInsets.all(20),
         
                decoration: BoxDecoration( 
                  
                   shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(50),
            
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.blue,
                      Colors.blue.shade300,
                    
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
                ),
),
                ), 
                 
           ),
           Container(padding: EdgeInsets.all(10),
           child:
                 Card( 
                  color: Colors.blue,
            borderOnForeground: false,
            elevation: 50,
           shadowColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              child: Text("Product 1",style: TextStyle(fontSize: 20,color: Colors.black),),
                width: 450,
          height: 300,
          padding: EdgeInsets.all(20),
         
                decoration: BoxDecoration( 
                  
                   shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(50),
            
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.blue,
                      Colors.blue.shade300,
                    
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
                ),
),
                ), 
                 
           ),
           Container(padding: EdgeInsets.all(10),
           child:
                 Card( 
                  color: Colors.blue,
            borderOnForeground: false,
            elevation: 50,
           shadowColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              child: Text("Product 1",style: TextStyle(fontSize: 20,color: Colors.black),),
                width: 450,
          height: 300,
          padding: EdgeInsets.all(20),
         
                decoration: BoxDecoration( 
                  
                   shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(50),
            
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.blue,
                      Colors.blue.shade300,
                    
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
                ),
),
                ), 
                 
           ),
           Container(padding: EdgeInsets.all(10),
           child:
                 Card( 
                  color: Colors.blue,
            borderOnForeground: false,
            elevation: 50,
           shadowColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Container(
              child: Text("Product 1",style: TextStyle(fontSize: 20,color: Colors.black),),
                width: 450,
          height: 300,
          padding: EdgeInsets.all(20),
         
                decoration: BoxDecoration( 
                  
                   shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(50),
            
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.blue,
                      Colors.blue.shade300,
                    
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    ),
                ),
),
                ), 
                 
           ),
           ]

              
              ),
              ),
    );
  }
}
