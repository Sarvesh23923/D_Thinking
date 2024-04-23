// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:dt/pages/login.dart';
import 'package:dt/pages/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      

      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(
                  "assets/register.svg",
                ),
              ),
          
              SizedBox(height: 10),
          
              Text(
                "Hey Champ👋,\nLet’s Create Your Account",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          
              SizedBox(height: 10),
          
              Padding(
                padding: const EdgeInsets.only(right: 250 ),
                child: Text(
                  "Name",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                ),
              ),
              
              SizedBox(height: 10),
          
              Form(
              child: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                        width: 130,
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
                          decoration: InputDecoration(
                            labelText: "First name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
          
          
          
            
                Container(
                  width: 130,
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
                    decoration: InputDecoration(
                      labelText: "Last name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
          ],
                ),
          
                SizedBox(height: 20),
          
              Padding(
                padding: const EdgeInsets.only(right: 170 ),
                child: Text(
                  "E-mail Address",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
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
                    decoration: InputDecoration(
                      labelText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
          
                SizedBox(height: 20),
          
              Padding(
                padding: const EdgeInsets.only(right: 145),
                child: Text(
                  "Create Password  ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
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
          
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: ((context) => Otp())
                    ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(117, 219, 206, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ), 
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(75,75,75,1)
                        )
                      ),
                    )
                  ),
                ),

                SizedBox(height: 5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      "You have an account ?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        )
                      ),
                    ),
                    
                    SizedBox(width: 5),

                    TextButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Login())
                        );
                      }, 
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color.fromRGBO(48,79,254,1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    )
                  ],
                )
          
          
              ],
            )
          )
            ],
          ),
        ),
      )
    );
  }
}