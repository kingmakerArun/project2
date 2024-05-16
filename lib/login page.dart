import 'package:flutter/material.dart';

import 'home.dart';
import 'homepage.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: Icon(Icons.home),
        title: Text("Welcome to the world"),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body:Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("assets/BahuleyaaLogo.jpg"),
                  fit: BoxFit.fill),
            ),

          ),
          Container(
            height: 100,
            width: 200,
            child: Center(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Enter the name",
                  hintStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            width: 200,
            child: Center(
              child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Enter the password",
                hintStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder(),
              ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const homepage()),
            );
          }, child: Text("login")),
        ],
      ),
    );
  }
}
