// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable, sort_child_properties_last

import 'package:dt/pages/confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Fg_Pass extends StatelessWidget {
  const Fg_Pass({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      body: Column(
        children: [
          SizedBox(height: 90),

          Container(
            width: 290,
            child: Text(
              "Forgot your password ?",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height:30),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
                "Select which contact medium should we \nuse to reset your password?",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[800]
                ),
            ),
          ),

          SizedBox(height: 30),

          Center(
            child: SizedBox(
              width: 317,
              height: 110,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Confirm())
                );
              }, 
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/sms.svg",
                  ),

                SizedBox(width: 30),

                  Column(
                    children: [
                      SizedBox(height: 30),
                      SizedBox(
                        width:95,
                        child: Text(
                          "via SMS:",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                          ),
                        ),
                      ),

                      SizedBox(height: 1),
                      Text(
                        "+913615****36",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.04,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        )
                      )
                    ],
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                backgroundColor: Color.fromRGBO(248,248,248,1,),
              ),
              ),
            ),
          )
        ],
      )
    );
  }
}
