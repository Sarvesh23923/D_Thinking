// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      body: Column(
        children: [
          SizedBox(height: 50),
          SvgPicture.asset(
            "assets/confirm.svg"
          )
        ]
      )
    );
  }
}