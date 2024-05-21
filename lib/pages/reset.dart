// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace, sort_child_properties_last

import 'package:dt/pages/confirm.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      body: Column(
          children: [
            SizedBox(height: 30),
            
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Container(
                width: 600,
                child: Text(
                  "Reset Password",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.07,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),

            Container(
                  width: 300,
                  child: Text(
                    "New Password  ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w500,
                        )
                    ),
                  ),
                ),
          
                SizedBox(height: 10),
          
              Container(
                margin: EdgeInsets.only(right: 10),
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: TextFormField(
                    expands: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "",
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),              
              SizedBox(height: 20),

                Container(
                  width: 300,
                  child: Text(
                    "Confirm New Password  ",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w500,
                        )
                    ),
                  ),
                ),
          
                SizedBox(height: 10),
          
              Container(
                margin: EdgeInsets.only(right: 10),
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), 
                      ),
                    ],
                  ),
                  child: TextFormField(
                    expands: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "",
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.2),

                Container(
                  width: 267,
                  height: 61,

                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Confirm())
                    );
                  },
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(75,75,75,1),
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(117, 219, 206, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ) 
                  ),
                )
          ],
      ),
    );
  }
}