import 'package:flutter/material.dart';


import 'addlist.dart';

class nextpage extends StatefulWidget {
  final name;
  const nextpage({super.key, this.name});

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
      ),
      body:Column(
        children: [
          Center(child: Text('${widget.name}',style: TextStyle(fontSize: 20),)),
    ListTile(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const addList()));
    },
    title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(onPressed: (){
        showDialog(
            context: context, builder: (BuildContext context)=>
            AlertDialog(
              title: Text("enter"),
              content: Container(
                height: 100,
                width: 100,
                child: Column(
                  children: [
                    TextFormField(
                      controller: widget.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    ElevatedButton(onPressed: ()
                    {
                      setState((){
                        final TextEditingController _name1 = TextEditingController(text: widget.name);
                        String sname = _name1.text;
                      });
                    }, child: const Text("add")),
                  ],
                ),
              ),
            ));
      },child: Text("delete"),),
      ElevatedButton(onPressed: (){
        showDialog(
            context: context, builder: (BuildContext context)=>
            AlertDialog(
              title: Text("enter"),
              content: Container(
                height: 100,
                width: 100,
                child: Column(
                  children: [
                    TextFormField(
                      controller: widget.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    ElevatedButton(onPressed: ()
                    {
                      setState((){
                        final TextEditingController _name1 = TextEditingController(text: widget.name);
                        String sname = _name1.text;
                      });
                    }, child: const Text("add")),
                  ],
                ),
              ),
            ));
      },child: Text("edit"),),

    ],
    ),
    ),
        ]
      ),
    );
  }
}






