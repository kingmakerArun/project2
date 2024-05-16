import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class login3 extends StatelessWidget {
  const login3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/nature.jpg"),
            fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                  ),
                  ),
                  child: Column(
                    children:
                    [
                      SizedBox(height: 0,),
                      Container(
                        height: 80,
                         width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                                image: DecorationImage(
                                image: AssetImage("assets/BahuleyaaLogo.jpg"),
                                fit: BoxFit.fill),
                          ),
                      ),
                          Text('ABC',
                            style: TextStyle(color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                    ],
                  ),
                ),
                Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    children:
                    [
                      SizedBox(height: 0,),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/BahuleyaaLogo.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text('ABC',
                        style: TextStyle(color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      ),
                    ],
                  ),
                ),
              ],
    ),
            SizedBox(height: 50,),
            Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purpleAccent),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                       image: DecorationImage(
                        image: AssetImage("assets/dept.jpg"),
                        fit: BoxFit.fill),
                       ),
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(35),
                                 child: BackdropFilter(
                                   filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                                   child: Column(
                                                   children: [
                                                     SizedBox(height: 30,),
                                                     Text("welcome to new world",style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                                                     Container(
                                                       height: 80,
                                                       width: 80,
                                                       decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.circular(30),
                                                         image: DecorationImage(
                                                             image: AssetImage("assets/BahuleyaaLogo.jpg"),
                                                             fit: BoxFit.fill),
                                                       ),

                                                     ),
                                                     SizedBox(height: 60,),
                                                     Container(
                                                       height: 100,
                                                       width: 250,
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(0.0),
                                                         child: TextFormField(
                                                           decoration: InputDecoration(
                                                             icon: Icon(Icons.person,color: Colors.redAccent,),
                                                             hintText: "Enter the Name",
                                                             hintStyle: TextStyle(color: Colors.cyanAccent),
                                                             border: OutlineInputBorder(),
                                                           ),
                                                         ),
                                                       ),
                                                     ),
                                                     Padding(
                                                       padding: const EdgeInsets.all(5.0),
                                                       child: ElevatedButton(onPressed: (){}, child: Text("login",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 15),)),
                                                     ),
                                                   ],
                                                 ),
                                 ),
                               ),
                  ),
                  ],
                ),
            ),
        );
      }
}
