import 'package:flutter/material.dart';
import 'package:project24/instagram.dart';
import 'package:project24/project8.dart';
import 'package:project24/spotify.dart';

import 'calculator.dart';
import 'demo.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0;

  final pages = [
    calculator(),
    const instagram(),
    const spotify(),
  ];


  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Instagram"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Spotify"),
        ],
        currentIndex: _index,
        onTap: tap,
      ) ,
    );
  }
}
