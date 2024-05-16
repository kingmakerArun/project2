import 'package:flutter/material.dart';

class kin extends StatelessWidget {
  const kin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.menu_book,size: 35,color: Colors.cyan,),
        title: Text("server",style: TextStyle(color: Colors.cyan,fontSize: 35,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_today),
          ),
        ],
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter name",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          TextFormField(),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Text("check me")),
          Container(
            height: 400,
            width: 300,
          // color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("assets/abc.jpg"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle
            ) ,
            child: Center(child: Text("ok")),
          )
        ],
      ),
    );
  }
}
