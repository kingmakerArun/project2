import 'package:flutter/material.dart';

class login1 extends StatelessWidget {
  const login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title:
        Center(
          child:
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/nature.jpg"),
                fit: BoxFit.fill,
              )
            ),
          ),
        ),
      ),
          body: Column(
            children: [
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
              Container(
                  height: 180,
                    width: 180,
                    decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                image: AssetImage("assets/abc.jpg"),
                fit: BoxFit.fill,
              )
                    ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(75.0),
                      child: Center(child: Text("GT",style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
                  ),

              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      image: AssetImage("assets/abc.jpg"),
                      fit: BoxFit.fill,
                    )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(75.0),
                      child: Center(child: Text("GT",style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
              ),

                      ],
              ),
              SizedBox(height: 70,),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      image: AssetImage("assets/nature.jpg"),
                      fit: BoxFit.fill,
                    )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/abc.jpg"),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:10.0,left:20.0,right:20.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "enter the name",
                            hintStyle: TextStyle(color: Colors.cyanAccent),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(onPressed: (){}, child: Text("login",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),)),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 70,),
                        Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(
                                image: AssetImage("assets/nature.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 70,),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(
                                image: AssetImage("assets/abc.jpg"),
                                fit: BoxFit.fill,
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
    );
  }
}
