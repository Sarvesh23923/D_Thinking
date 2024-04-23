// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),

      body: Column(
        children:[

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Enter the Code",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                )
              )
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              "The code has been sent to\n example*****@gmail.com",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
                )
              )
            ),
          )
        ]
      )
    );
  }
}