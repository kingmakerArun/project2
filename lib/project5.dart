import 'package:flutter/material.dart';

class login5 extends StatefulWidget {
  const login5({super.key});

  @override
  State<login5> createState() => _login5State();
}

class _login5State extends State<login5> {

  final _key = GlobalKey<FormState>();
  bool _show = false;

    @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading:Icon(Icons.home,color: Colors.redAccent,),
        title: Text("Customer Login Page",style: TextStyle(color: Colors.redAccent),),
        actions: [
          Icon(Icons.search_rounded,color: Colors.redAccent,),
        ],
      ),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left:25.0,right:25.0),
              child: TextFormField(
                decoration: InputDecoration(
                 icon: Icon(Icons.person,color: Colors.blue,),
                  hintText: "Please enter the Name",
                  hintStyle: TextStyle(color: Colors.cyanAccent),
                  border: OutlineInputBorder(),
               ),
                validator: (input)
                {
                  if(input == null || input.isEmpty || !RegExp(r"^[a-zA-Z]")
                      .hasMatch(input))
                    {
                      return 'please enter valid name';
                    }
                  setState(() {
                    _show = true;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left:25.0,right:25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone,color: Colors.blue,),
                  hintText: "Please enter the Phone number",
                  hintStyle: TextStyle(color: Colors.cyanAccent),
                  border: OutlineInputBorder(),
                ),
                validator: (input)
                {
                  if(input == null || input.isEmpty || !RegExp(r"^[0-9]")
                      .hasMatch(input) || input.length !=10)
                  {
                    return 'please enter valid phone number';
                  }

                },
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left:25.0,right:25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.mail,color: Colors.blue,),
                  hintText: "Please enter the mail id",
                  hintStyle: TextStyle(color: Colors.cyanAccent),
                  border: OutlineInputBorder(),
                ),
                validator: (input)
                {
                  if(input == null || input.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(input))
                  {
                    return 'please enter valid mail id';
                  }
                  }
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left:25.0,right:25.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.password,color: Colors.blue,),
                    hintText: "Please enter the password",
                    hintStyle: TextStyle(color: Colors.cyanAccent),
                    border: OutlineInputBorder(),
                  ),
                  validator: (input)
                  {
                    if(input == null || input.isEmpty  || input.length  !=3)
                    {
                      return 'Password must be 3 characters.\n';
                    }
                    if (!input.contains(RegExp(r'[A-Z]')))
                    {
                      return '• Uppercase letter is missing.\n';
                    }
                    if (!input.contains(RegExp(r'[0-9]'))) {
                      return '• Digit is missing.\n';
                    }
                    if (!input.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                      return '• Special character is missing.\n';
                    }
                     }
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
                 child: Visibility(
                 visible: _show,
                  child: ElevatedButton(onPressed: (){
                  if(_key.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                    }
                }, child: Text("ok",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,),)),
              ),
            ),
        ],
            ),
      ),
        );
  }
}

/// reg exp