import 'package:flutter/material.dart';
import 'package:project24/spotify.dart';
import 'package:project24/page1.dart';
import 'package:project24/printer.dart';
import 'package:project24/project1.dart';
import 'package:project24/project2.dart';
import 'package:project24/project3.dart';
import 'package:project24/project4.dart';
import 'package:project24/project5.dart';
import 'package:project24/project7.dart';
import 'package:project24/project8.dart';
import 'package:project24/login page.dart';
import 'package:project24/setting.dart';
import 'package:project24/t.dart';
import 'package:project24/value%20passed.dart';

import 'Botnavi.dart';
import 'Addmany.dart';
import 'addlist.dart';
import 'bala.dart';
import 'calculator.dart';
import 'check.dart';
import 'demo.dart';
import 'e-com.dart';
import 'home.dart';
import 'homepage.dart';
import 'instagram.dart';
import 'new.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16.0),
        ),
      ),
      home: LoginScreen() ,
    );
  }
}


