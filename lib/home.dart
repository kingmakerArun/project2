import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.home),
        title: Center(child: Text("home page")),
        actions: [
          Icon(Icons.search_rounded),
        ],
              ),
      body:
      Column(
        children: [
           Container(
            height: 800,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/nature.jpg"),
                  fit: BoxFit.fill,
                )
            ),
          ),
        ]
      ),
    );
  }
}
