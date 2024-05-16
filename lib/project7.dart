import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class log7 extends StatefulWidget {
  const log7({super.key});

  @override
  State<log7> createState() => _log7State();
}

class _log7State extends State<log7> {

    bool _show = false;

    final TextEditingController _controller = TextEditingController();

  @override

  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
           // child: Visibility(
           // visible: _show,
            child: Container(
              height: 100,
              width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "enter the details",
                      border: OutlineInputBorder(),
                    ),
                                    ),
                ),

            ),
     // ),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                _show = true;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ok"),
            ),
          ),
        ],
      ),
    );
  }
}