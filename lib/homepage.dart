import 'package:flutter/material.dart';
import 'package:project24/demo.dart';
import 'package:project24/instagram.dart';
import 'package:project24/setting.dart';
import 'package:project24/spotify.dart';

import 'calculator.dart';
import 'home.dart';
import 'home1.dart';
import 'login page.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int _variable = 0;

  final pages = [
    calculator(),
    instagram(),
    spotify(),
 ];


  void tap(variable)
  {
    setState(() {
      _variable = variable;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_variable],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Instagram"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Spotify"),
        ],
        currentIndex: _variable,
        onTap: tap,
      ),
    );
  }
}
