import 'package:flutter/material.dart';

import 'Addmany.dart';

class Next1 extends StatefulWidget {
  final String name11;

  const Next1({Key? key,required this.name11}): super(key:key);

  @override
  State<Next1> createState() => _Next1State();
}

class _Next1State extends State<Next1> {
  late TextEditingController _name1 = TextEditingController();
  TextEditingController _id1 = TextEditingController();
  TextEditingController _pwd1 = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    List asd = widget.name11.split('\n');
    _name1 = TextEditingController(text: asd[0]);
    _id1 = TextEditingController(text: asd[1]);
    _pwd1 = TextEditingController(text: asd[2]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
      ),
      body:Column(
          children: [
            Center(
              child: Text('${widget.name11}'
                  ,style: const TextStyle(fontSize: 20),),
            ),
            const SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Addmany()));
              },
              title: Container(
                height: 300,
                width: 400,
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: _name1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: _id1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: _pwd1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: ()
                        {
                          String edit = '${_name1.text}\n${_id1.text}\n${_pwd1.text}';
                          Navigator.pop(context,edit);
                        }, child: const Text("Edit")),
                        ElevatedButton(onPressed: (){
                          String delete = '';
                          Navigator.pop(context,delete);
                        }, child: const Text("Delete")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}






