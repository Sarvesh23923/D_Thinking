// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset("assets/home.svg"), 
            label: ""
          ),
          NavigationDestination(
            icon: SvgPicture.asset("assets/vdo.svg"), 
            label: ""
          ),
          NavigationDestination(
            icon: SvgPicture.asset("assets/progress.svg"), 
            label: ""
          ),
          NavigationDestination(
            icon: SvgPicture.asset("assets/profile.svg"), 
            label: ""
          ),
        ]
      ),
    );
  }
}