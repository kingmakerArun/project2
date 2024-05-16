import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project24/project1.dart';

class login9 extends StatefulWidget {
  const login9({super.key});

  @override
  State<login9> createState() => _login9State();
}

class _login9State extends State<login9> {

  TextEditingController nameController = TextEditingController();
  TextEditingController nameController1 = TextEditingController();
   final _key = GlobalKey<FormState>();

  bool _show =false;

  a()
  {
    setState(() {
      _show = nameController.text.isNotEmpty && nameController1.text.isNotEmpty == true;
    });
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("welcom to world"),
      ),
      body:Form(
    key: _key,
    autovalidateMode: AutovalidateMode.always,
    child: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 100,
            width: 100,

            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
               labelText: "enter the name",
              border: OutlineInputBorder(),
              ),
                validator: (input)
              {
                if(input == null || input.isEmpty || !RegExp(r"^[a-zA-Z]")
                    .hasMatch(input))
                {
                  return 'please enter valid name';
                }
                },
              onChanged: (input)
              {
               a();
                         },
      ),
      ),
          TextFormField(
            controller: nameController1,
            decoration: InputDecoration(
              labelText: "enter the name",
              border: OutlineInputBorder(),
            ),
            validator: (input)
            {
              if(input == null || input.isEmpty || !RegExp(r"^[a-zA-Z]")
                  .hasMatch(input))
              {
                return 'please enter valid name';
              }
            },
            onChanged: (input)
            {
              a();
            },
          ),
                     Visibility(
           // visible: _show,
            child: ElevatedButton(

                onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const login()),
                  );
                  },
            child: Text("ok")),
          ),


          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login()),
              );
            },
            child: Container(
              height: 200,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login()),
              );
            },
            child: Container(
              height: 200,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login()),
              );
            },
            child: Container(
              height: 200,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login()),
              );
            },
            child: Container(
              height: 200,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ), GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login()),
              );
            },
            child: Container(
              height: 200,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),


                        ]
          ),
      )
    );
  }
}
