import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Center(child: Icon(Icons.home)),
        leading: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage("assets/nature.jpg"),
              fit: BoxFit.fill,
            )
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("GT",style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                image: AssetImage("assets/abc.jpg"),
                fit: BoxFit.fill,
              ),
            ),
           child: Column(
             children: [
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     icon: Icon(Icons.person),
                     hintText: "Enter the name",
                     border: OutlineInputBorder(),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     icon: Icon(Icons.password_sharp),
                     hintText: "Enter the password",
                     border: OutlineInputBorder(),
                   ),
                 ),
               ),
               TextButton(onPressed: (){}, child: Text("Login")),
             ],
           ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password_sharp),
                hintText: "Enter the password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password_sharp),
                hintText: "Enter the password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
