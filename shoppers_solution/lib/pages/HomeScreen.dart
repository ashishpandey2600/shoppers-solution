import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppers_solution/My_Drawer/Contact.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Row(children: [
        Text("Shoppers Solution",   ),
   

      ],)]),
        
      
      

        drawer: Drawer(child: Column(children: [
Container(),
          ElevatedButton(onPressed: (() {
            
          }), child: Text("My Categories")),
          ElevatedButton(onPressed: (() {
            
          }), child: Text("My orders")),
          ElevatedButton(onPressed: (() {
            
          }), child: Text("My application")),
          ElevatedButton(onPressed: (() {
            
          }), child: Text("Logout")),
          ElevatedButton(onPressed: (() {
            
          }), child: Text("Contact")),
        ],)),

    );
  }
}
