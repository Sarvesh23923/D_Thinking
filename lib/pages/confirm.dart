// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, library_private_types_in_public_api

import 'package:dt/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Confirm extends StatefulWidget {
  const Confirm({Key? key}) : super(key: key);

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), 
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward(); 
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 255, 249, 1),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.15),
          Center(
            child: ScaleTransition(
              scale: _animation,
              child: SvgPicture.asset(
                "assets/confirm.svg",
              ),
            ),
          ),

          SizedBox(height: screenHeight * 0.07),
          Center(
              child: FadeTransition(
                opacity: _animation,
                child: Text(
                  "Your password has been changed \nsuccessfully",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
          ),

          SizedBox(height: screenHeight * 0.1),

          ScaleTransition(
            scale: _animation,
            child: Container(
              width: 261,
              height: 61,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>Login())
                    );
                  },
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * 0.03,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(75, 75, 75, 1),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(117, 219, 206, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                      )
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
