import 'package:flutter/material.dart';

import 'next1.dart';

class Addmany extends StatefulWidget {
  const Addmany({super.key});

  @override
  State<Addmany> createState() => _AddmanyState();
}

class _AddmanyState extends State<Addmany> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _id = TextEditingController();
  final TextEditingController _pwd = TextEditingController();

  List l1 = [];

  void changePage(String data)
  {
    Navigator.push(context,MaterialPageRoute(builder: (context)=> Next1( name11:data,),),
    ).then((editableData){
    if(editableData !=null) {
      setState(() {
         l1[l1.indexWhere((element) => element == data)] = editableData;
      });
    }
    });
  }
  void deleteitem(var i)
  {
    Navigator.push(context,MaterialPageRoute(builder: (context)=> Next1( name11:i),),
    ).then((deleteableData){
      if(deleteableData ==null) {
        setState(() {
          l1.removeWhere((index) => index == i);
           l1.removeWhere((element) {
             return element.key == l1[i].key;
           });
           l1.removeAt(i);
        });
      }
    });
  }
  void add1()
  {
    String text1=_name.text;
    String text2=_id.text;
    String text3=_pwd.text;
    if(text1.isNotEmpty && text2.isNotEmpty && text3.isNotEmpty)
      {
        setState(() {
          l1.add('$text1\n$text2\n$text3');
          _name.clear();
          _id.clear();
          _pwd.clear();
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  showCursor: true,
                  controller: _name,
                  decoration: const InputDecoration(
                    hintText: "Enter your name",
                    hintStyle: TextStyle(color: Colors.cyanAccent),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  showCursor: true,
                  controller: _id,
                  decoration: const InputDecoration(
                    hintText: "Enter your id",
                    hintStyle: TextStyle(color: Colors.cyanAccent),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  showCursor: true,
                  controller: _pwd,
                  decoration: const InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.cyanAccent),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              ElevatedButton(onPressed: ()
              {
                setState(() {
                  add1();
                });
              }, child: const Text("add")),
              const SizedBox(height: 20,),
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child:
                ListView.builder(
                  itemCount: l1.length,
                  itemBuilder: (context ,index) {
                    return Dismissible(
                      key: Key(l1[index]),
                      onDismissed: (direction) {
                        setState(() {
                          l1.removeAt(index);
                          // deleteitem(l1[index]);
                        });
                      },
                      child: ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Next1(name11: l1[index])));
                        },
                        title:
                        Card(
                          child: Column(
                            children: [
                              Text(l1[index],style: const TextStyle(color: Colors.redAccent),),
                            ],
                          ),
                        ),
                        trailing:
                        ElevatedButton(onPressed: (){
                          changePage(l1[index]);
                        },child: const Text("update"),),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 200,
                width: 300,
                child: Text("Current List is:""\n" "$l1""\n",
                  style: const TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold, fontSize: 15),),
              ),
            ]
        ),
      ),
    );
  }


}



