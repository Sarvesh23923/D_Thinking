// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dt/models/nav_menu.dart';
import 'package:dt/pages/progress.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
        title: Text(
          "DT",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Progress())
            );
            }, child: Text(
              "Progress"
            )),
          ),
         Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Navbar())
            );
            }, child: Text(
              "Progress"
            )),
          ),
        ]
      )
    );
  }
}