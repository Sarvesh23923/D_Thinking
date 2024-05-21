// ignore_for_file: prefer_const_constructors

import 'package:dt/Pages/signup.dart';
import 'package:dt/pages/chart.dart';
import 'package:dt/pages/login.dart';
import 'package:dt/pages/otp.dart';
import 'package:dt/pages/progress.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

