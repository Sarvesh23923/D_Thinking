// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          
          SizedBox(height: 20),
          Container(
            height: screenHeight * 0.32,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromRGBO(255,192,0,1), 
                Color.fromRGBO(242,81,116,1)],
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            child: AspectRatio(
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
                  DChartBarDataCustom(value: 90, label: 'E', ),
                  DChartBarDataCustom(value: 50, label: 'D'),
                  DChartBarDataCustom(value: 5.0, label: 'I'),
                  DChartBarDataCustom(value: 5, label: 'P'),
                  DChartBarDataCustom(value: 5, label: 'T'),
                ]),
              ),
            ),
          )
        ],
      )
    );
  }
}