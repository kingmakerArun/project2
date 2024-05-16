import 'package:flutter/material.dart';

import 'homepage.dart';

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.home),
        title: Center(child: Text("new home page")),
        actions: [
          Icon(Icons.search_rounded),
        ],
      ),
      body:
        Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 300,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home2()),
                );
              },child: Text("click me")),

            ),
          ]
        ),
    );
  }
}
