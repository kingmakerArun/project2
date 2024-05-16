import 'package:flutter/material.dart';

class valuepass extends StatefulWidget {
  const valuepass({super.key});

  @override
  State<valuepass> createState() => _valuepassState();
}

class _valuepassState extends State<valuepass> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value passed"),
      ),
      body:Column(
        children: [
          TextField(
            controller: _controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
                 ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setState(() {
              _controller.text = "1";
            }
            );
          }, child: Text("1")),
          ElevatedButton(onPressed: (){
            setState(() {
              _controller.text = "2";
            }
            );
          }, child: Text("2")),

        ],
      ),

    );
  }
}
