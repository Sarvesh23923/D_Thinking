// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:d_chart/d_chart.dart';

class Progress extends StatefulWidget {
  const Progress({Key? key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late int _randomNumber;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _randomNumber = _generateRandomNumber();
    _animation = Tween<double>(begin: 0, end: _randomNumber / 10).animate(_controller);

    // Start the animation after a short delay
    Future.delayed(Duration(milliseconds: 500), () {
      _controller.forward();
    });
  }

  int _generateRandomNumber() {
    Random random = Random();
    return random.nextInt(11); // Generate a random number between 0 and 10
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
      
      body: ListView(
        children: [
          SizedBox(height: screenHeight * 0.05),
          
          Column(
          children: [
            SizedBox(height: screenHeight * 0.01),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    "Hello Amar",
                    style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(122, 116, 219, 1),
                  ),
                  child: Image.asset(
                    "assets/Avatar.png",
                    width: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                "You're making an incredible progress",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.025),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 107,
                      height: 310,
                      child: Column(children: [
                        Container(
                          width: 107,
                          height: 144,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(213, 243, 255, 5),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.7),
                                blurRadius: 1,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 23),
                                child: Text(
                                  "Completed",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                "${(_randomNumber * _animation.value).ceil()}",
                                style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.1,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Modules",
                                style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.05,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                    
                        SizedBox(height: screenHeight * 0.012),
                    
                        Container(
                          width: 104,
                          height: 156,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255,122,79,1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.7),
                                blurRadius: 1,
                                offset: Offset(0, 4),
                              ),
                            ]
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: screenHeight * 0.01),
                              Text(
                                "Current",
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                    
                              CircularPercentIndicator(
                                radius: 40,
                                lineWidth: screenWidth * 0.02,
                                percent: _animation.value,
                                progressColor: Colors.white,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Text(
                                  "${(_animation.value * 100).toInt()}%",
                                  style: GoogleFonts.poppins(
                                    fontSize: screenWidth * 0.06,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                  )
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                    
                              Text(
                                "Progress",
                                style: GoogleFonts.poppins(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white
                                )
                              )
                            ],
                          )
                        )
                      ]),
                    ),
                    Container(
                      width: 210,
                      height: 310,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(4, 95, 250, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 1,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Weekly Activity",
                            style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ) 
                          ),
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: FractionallySizedBox(
                              widthFactor: 0.8,
                              child: DChartBarCustom(
                                showDomainLabel: true,
                                domainLabelStyle: GoogleFonts.poppins(),
                                spaceBetweenItem: 17, //spacing between bars
                                spaceDomainLabeltoChart: 30, //spacing between label and chart
                                radiusBar: BorderRadius.circular(50),
                                max: 100,
                                listData: [
                                  DChartBarDataCustom(value: 90, label: 'E'),
                                  DChartBarDataCustom(value: 50, label: 'D'),
                                  DChartBarDataCustom(value: 5.0, label: 'I'),
                                  DChartBarDataCustom(value: 5, label: 'P'),
                                  DChartBarDataCustom(value: 5, label: 'T'),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),

                  ],
                );
              },
            ),

            SizedBox(height: screenHeight * 0.03),

            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Test scores",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
                )
              ),
            ),
            
            SizedBox(height: screenHeight * 0.02),

            Container(
  width: 324,
  height: screenHeight * 0.32,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Color.fromRGBO(255, 192, 0, 1), 
      Color.fromRGBO(242, 81, 116, 1)],
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Stack(
    children: [
      AspectRatio(
        aspectRatio: 16 / 9,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: DChartBarCustom(
            showDomainLabel: true,
            domainLabelStyle: GoogleFonts.poppins(),
            spaceBetweenItem: 30, //spacing between bars
            spaceDomainLabeltoChart: 15, //spacing between label and chart
            radiusBar: BorderRadius.circular(50),
            max: 100,
            listData: [
              DChartBarDataCustom(value: 90, label: 'E'),
              DChartBarDataCustom(value: 50, label: 'D'),
              DChartBarDataCustom(value: 5.0, label: 'I'),
              DChartBarDataCustom(value: 5, label: 'P'),
              DChartBarDataCustom(value: 5, label: 'T'),
            ],
          ),
        ),
      ),
      Positioned.fill(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              
            ),
          ),
        ),
      ),
    ],
  ),
)

          ],
        ),
        ]
      ),
    );
  }
}

