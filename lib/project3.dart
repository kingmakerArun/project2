import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login2 extends StatelessWidget {
  const login2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
              image: AssetImage("assets/abc.jpg"),
            fit: BoxFit.fill,
                      )
        ),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(image: AssetImage("assets/nature.jpg"),
                fit: BoxFit.fill),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage("assets/dept.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage("assets/dept.jpg"),
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage("assets/dept.jpg"),
                          fit: BoxFit.fill,
                                                 ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage("assets/dept.jpg"),
                          fit: BoxFit.fill,
                                                 ),
                      ),
                    ),

                  ],
                ),
              ],
            )
            ],
            ),
             SizedBox(height: 30,),
                Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                          image: AssetImage("assets/wallpaper.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(35),
                                image: DecorationImage(
                                  image: AssetImage("assets/abc.jpg"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                         Column(
                           children: [
                             Container(
                               width: 200,
                               height: 100,
                               child: TextFormField(
                                 decoration: InputDecoration(
                                   icon: Icon(Icons.person),
                                   hintText: "enter the name",
                                   hintStyle: TextStyle(color: Colors.redAccent),
                                   border: OutlineInputBorder(),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: ElevatedButton(onPressed: (){}, child: Text("login")),
                             ),
                           ],
                         )
                        ],
                      ),


                   Row(
                     children: [
                       Container(
                         height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                             border: Border.all(),
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: AssetImage("assets/abc.jpg"),
                               fit: BoxFit.fill,
                               alignment: Alignment.bottomCenter,
                             )
                         ),
                       ),
                       Container(
                         height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                             border: Border.all(),
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: AssetImage("assets/abc.jpg"),
                               fit: BoxFit.fill,
                               alignment: Alignment.bottomCenter,
                             )
                         ),
                       ),
                       Container(
                         height: 150,
                         width: 150,
                         decoration: BoxDecoration(
                             border: Border.all(),
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: AssetImage("assets/abc.jpg"),
                               fit: BoxFit.fill,
                               alignment: Alignment.bottomCenter,
                             )
                         ),
                       ),
                     ],
                   )
                    ],
                  ),
                ),
              ],
            ),
      ),
        );
  }
}

