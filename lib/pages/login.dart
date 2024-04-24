// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable, unused_import

import 'package:dt/pages/forget.dart';
import 'package:dt/pages/reset.dart';
import 'package:dt/pages/home.dart';
import 'package:dt/pages/login.dart';
import 'package:dt/pages/otp.dart';
import 'package:dt/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
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
                  "assets/login.svg",
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
            
                  Container(
                    width: 300,
                    child: Text(
                      "E-mail ",
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

                  Container(
                    width: 300,
                    child: Text(
                      "Password  ",
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
          
                SizedBox(height: 15),

                TextButton(onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(                    
                    builder: (context) => Fg_Pass(),
                  )
                );
                }, 
                child: Container(
                  width: 300,
                  child: Text(
                    "Forget password ?",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(48,79,254,1),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
                ),
          
                SizedBox(
                  width: 267,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: ((context) => Home())
                    ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(117, 219, 206, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ), 
                    child: Text(
                      "Login",
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
                      "Don't have an account ?",
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
                        MaterialPageRoute(builder: (context) => SignUp())
                        );
                      }, 
                      child: Text(
                        "Sign Up",
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
          ),
        ),
      )
    );
  }
}