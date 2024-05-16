import 'package:flutter/material.dart';


class SelvamaniPositionCalculator extends StatefulWidget {
  const SelvamaniPositionCalculator({super.key});

  @override
  State<SelvamaniPositionCalculator> createState() => _SelvamaniPositionCalculatorState();
}

class _SelvamaniPositionCalculatorState extends State<SelvamaniPositionCalculator> {

  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Enter number of seconds',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _result = calculatePosition(
                    int.parse(_controller.text)).toString();
              });
            },
            child: Text('Calculate'),
          ),
          SizedBox(height: 20),
          Text(
            'Selvamani\'s position after ${_controller.text} seconds: $_result',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );


  }

}

 int calculatePosition(int k) {
    var position = 0;
    var forwardSteps = 3;
    var backwardSteps = 1;

    for (var i = 1; i <= k; i++) {
      if (i % 2 != 0) {
        position += forwardSteps;
      } else {
        position -= backwardSteps;
      }
    }

    return position;
  }
