import 'package:flutter/material.dart';
import 'nextpage.dart';

class addList extends StatefulWidget {
  const addList({super.key});

  @override
  State<addList> createState() => _addListState();
}

class _addListState extends State<addList> {

   final TextEditingController _list = TextEditingController();
   final TextEditingController _list1 = TextEditingController();

   List new1 = [];
   List new2 = [];
   List new3 = [];


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
                        controller: _list,
                        decoration: const InputDecoration(
                          hintText: "Enter your list to add",
                          hintStyle: TextStyle(color: Colors.cyanAccent),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    ElevatedButton(onPressed: ()
                    {
                      setState(() {
                        new1.add(_list.text);
                         _list.clear();
                      });
                    }, child: const Text("add")),
            const SizedBox(height: 20,),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: ListView.builder(
                itemCount: new1.length,
            itemBuilder: (context ,index) {
              return Dismissible(
                key: Key(new1[index]),
                onDismissed: (direction) {
                  setState(() {
                    new1.removeAt(index);
                  });
                },
              child: ListTile(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>nextpage(name: new1[index],)));
              },
              title: Text(
              new1[index],style: const TextStyle(color: Colors.redAccent),),

                trailing:
                ElevatedButton(onPressed: (){
                  showDialog<void>(context: context, builder: (BuildContext context)
                  {
                    return Container(
                      height: 200,
                      width: 200,
                      child: AlertDialog(
                          title: const Text('update value'),
                          actions: [
                        TextFormField(
                        controller: _list1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: new1[index],
                          hintStyle: TextStyle(color: Colors.red),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                            ElevatedButton(onPressed: ()
                            {
                              setState(() {
                                new1[index]=_list1.text;
                                Navigator.of(context).pop();
                                // _list1.clear();
                              });
                            }, child: const Text("add")),
                          ],
                      ),
                    );
                  }
                  );
                },child: Text("update"),),
              ),
              );
            },
            ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                  setState(() {
                    new1.sort((a,b) => int.parse(a).compareTo(int.parse(b)));
                  });
                  showDialog<void>(context: context, builder: (BuildContext context)
                  {
                    return AlertDialog(
                      title: const Text('Ascending order'),
                      content:  Text("Ascending order is : $new1"),
                      actions: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }, child: Text("okay"),
                        ),
                      ],
                    );
                  }
                  );
                },
                    child: Text("ascending")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    new1.sort((a,b) => int.parse(b).compareTo(int.parse(a)));
                    showDialog<void>(context: context, builder: (BuildContext context)
                    {
                      return AlertDialog(
                        title: const Text('Descending order'),
                        content:  Text("Descending order is : $new1"),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("okay"),
                          ),
                        ],
                      );
                    }
                    );
                  });

                },
                    child: Text("descending")),
              ]
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      new1.sort((a,b) => int.parse(b).compareTo(int.parse(a)));
                    });
                    showDialog<void>(context: context, builder: (BuildContext context)
                    {
                      return AlertDialog(
                        title: const Text('Max'),
                        content:  Text("Maximum no in list is : ${new1.first}"),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("okay"),
                          ),
                        ],
                      );
                    }
                    );
                  },
                      child: Text("max")),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      new1.sort((a,b) => int.parse(b).compareTo(int.parse(a)));
                    });
                    showDialog<void>(context: context, builder: (BuildContext context)
                    {
                      return AlertDialog(
                        title: const Text('Max'),
                        content:  Text("Maximum no in list is : ${new1.last}"),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("okay"),
                          ),
                        ],
                      );
                    }
                    );
                  },
                      child: Text("min")),
                ]
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                       new2=new1.where((n)=> int.parse(n)>5).toList();
                    showDialog<void>(context: context, builder: (BuildContext context)
                    {
                      return AlertDialog(
                        title: const Text('greater than 5'),
                        content:  Text("greater than 5 list is : $new2"),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("okay"),
                          ),
                        ],
                      );
                    }
                    );
                  },
                      child: Text(">5")),
                  ElevatedButton(onPressed: (){
                    new3=new1.where((n)=> int.parse(n)<5).toList();
                    showDialog<void>(context: context, builder: (BuildContext context)
                    {
                      return AlertDialog(
                        title: const Text('Lesser than 5'),
                        content:  Text("Lesser than 5 list is : $new3"),
                        actions: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.labelLarge,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("okay"),
                          ),
                        ],
                      );
                    }
                    );
                  },
                      child: Text("<5")),
                ]
            ),
            SizedBox(height: 15,),
            Container(
              height: 200,
              width: 300,
              child: Text("Current List is: $new1",
                style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold, fontSize: 15),),
            ),

          ]
              ),
      ),
    );
  }
}

