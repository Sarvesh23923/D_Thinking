// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      appBar: AppBar(
        elevation: 0,
      ),

      body: Column(
        children:[
          SizedBox(height: 20),
            Container(
              width: 300,
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

          SizedBox(height: 50),

            Container(
              width: 300,
              child: Text(
                  "The code has been sent to example***@gmail.com",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    )
                ),
                ),
            ),

          SizedBox(height: 70),


          Container(
            width: 300,
            child: Pinput(
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              defaultPinTheme: PinTheme(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(236,242,255,1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                    )
                  ]
                )
              ),
            ),
          ),
          

          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Resend code",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(100, 123, 254, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  )
                ),
              ),

              SizedBox(width:5),

              Text(
                "in 56s",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  )
                ),
              ),
            ]
          ),

          SizedBox(height: 50),

          SizedBox(
            width: 267,
            height: 61,
            child: ElevatedButton(onPressed: (){}, 
            child: Text(
              "Verify",
              style: GoogleFonts.poppins(
                color:Color.fromRGBO(75,75,75,1),
                fontSize: 20,
                fontWeight:FontWeight.w600,
              )
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(117, 219, 206,1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
            ),
          )
        ]
      )
    );
  }
}