import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:project24/home.dart';

import 'home1.dart';
import 'login page.dart';
import 'new.dart';

void main() {
  runApp(const settings());
}

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.navigate_before_outlined),
        title: Center(child: Text("Profile")),
        actions: [
          Icon(Icons.search_rounded),
        ],
      ),
      body:

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Report"),
          ),
        Card(
          elevation: 9,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("rep1"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
            SizedBox(height: 15,),

            Card(
              elevation: 9,
              child: ListTile(

                leading: Icon(Icons.password),
                title: Text("password"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SizedBox(height: 15,),
                        Center(
                          child: TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const home2()),
                            );
                          },style: ButtonStyle(
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(fontSize: 20,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),

                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                            shadowColor: MaterialStateProperty.all<Color>(Colors.orange),
                            elevation: MaterialStateProperty.all<double>(10.0),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                              child: Text("HELP?")),
                        ),
                        SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const loginpage()),
              );
            }, child: Center(child: Text("logout"))),
          ]
      ),
    );
  }
}

    

