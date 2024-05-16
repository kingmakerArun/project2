import 'dart:js_util';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController _controller = TextEditingController();
  String number1 = "";
  String number2 = "";
  String operator = "";
  bool click = false;


  TextEditingController _invNo = TextEditingController();
  TextEditingController _gstVal = TextEditingController();
  double invoiceValue = 0;
  double gstPercentage = 0;

  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();
  double height1 = 0;
  double weight1 = 0;
  String a="";


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body:
        Column(
        children: [

          const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: "calculator",),
              Tab(text: "GST",),
              Tab(text: "BMI",),
            ],
          ),

                Expanded(
                  child: TabBarView(children: [
                    Container(
                      child: Column(
                          children: [
                            SizedBox(height: 250,),
                            TextField(
                              textDirection: TextDirection.ltr,
                              showCursor: true,
                              readOnly: true,
                              controller: _controller,
                              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              onSubmitted: (String value){},
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "";
                                    number1 ="";
                                    number2 ="";
                                    click = false;
                                  }, child: Text("AC",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "%";
                                    operator = "%";
                                    click = true;
                                  }, child: Text("%",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "√";
                                    operator = "√";
                                    click = false;
                                  }, child: Text("√",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "/";
                                    operator = "/";
                                    click = true;
                                  }, child: Text("/",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                ]
                            ),
                            SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="7";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="7";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("7",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="8";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="8";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("8",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="9";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="9";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("9",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "*";
                                    operator = "*";
                                    click = true;
                                  }, child: Text("*",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                ]
                            ),
                            SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="4";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="4";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("4",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="5";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="5";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("5",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="6";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="6";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("6",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "-";
                                    operator = "-";
                                    click = true;
                                  }, child: Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                ]
                            ),
                            SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="1";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="1";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="2";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="2";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="3";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="3";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("3",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "+";
                                    operator = "+";
                                    click = true;
                                  }, child: Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                ]
                            ),
                            SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="00";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="00";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +="0";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +="0";
                                      _controller.text = number1;
                                    }
                                  }, child: Text("0",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(click)
                                    {
                                      number2 +=".";
                                      _controller.text = number2;
                                    }
                                    else
                                    {
                                      number1 +=".";
                                      _controller.text = number1;
                                    }
                                  }, child: Text(".",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    if(operator=="+")
                                    {
                                      double value1 = double.parse(number1);
                                      double value2 = double.parse(number2);
                                      double value3 = value1 + value2;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="-")
                                    {
                                      double value1 = double.parse(number1);
                                      double value2 = double.parse(number2);
                                      var value3 = value1 - value2;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="*")
                                    {
                                      double value1 = double.parse(number1);
                                      double value2 = double.parse(number2);
                                      var value3 = value1 * value2;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="/")
                                    {
                                      double value1 = double.parse(number1);
                                      double value2 = double.parse(number2);
                                      double value3 = value1/value2;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="%")
                                    {
                                      double value1 = double.parse(number1);
                                      double value2 = double.parse(number2);
                                      double value3 =  modulo(value1, value2) ;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="√")
                                    {
                                      double value1 = double.parse(number1);
                                      double value3 =  sqrt(value1) ;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="^2")
                                    {
                                      double value1 = double.parse(number1);
                                      double value3 = value1*value1;
                                      _controller.text = value3.toString();
                                    }
                                    else if(operator=="^3")
                                    {
                                      double value1 = double.parse(number1);
                                      double value3 = value1*value1*value1;
                                      _controller.text = value3.toString();
                                    }
                                  }, child: Text("=",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                ]
                            ),
                            SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "^2";
                                    operator = "^2";
                                    click = false;
                                  }, child: Text("^2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                  ElevatedButton(onPressed: (){
                                    _controller.text = "^3";
                                    operator = "^3";
                                    click = false;
                                  }, child: Text("^3",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                                ]
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Container(
                        height: 100,
                        width: 300,
                        child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: _invNo,
                                decoration: InputDecoration(
                            hintText: "Enter the Amount",
                            hintStyle: TextStyle(color: Colors.cyanAccent),
                            border: OutlineInputBorder(),
                                ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: _gstVal,
                              decoration: InputDecoration(
                                hintText: "Enter the GST %",
                                hintStyle: TextStyle(color: Colors.cyanAccent),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                              double invoiceValue1 = double.parse(_invNo.text);
                              double gstPer1 = double.parse(_gstVal.text);

                            double totalAmount = invoiceValue1+(invoiceValue1 * gstPer1)/100;

                            double totalAmount1 = invoiceValue1-(invoiceValue1-(invoiceValue1*100/(100+gstPer1)));
                              showDialog<void>(context: context, builder: (BuildContext context)
                            {
                              return AlertDialog(
                                title: const Text('GST Calculation'),
                                content:  Text(
                                    "Invoice value"+ "$invoiceValue1\n"
                                    "GST value"+"$gstPer1\n"
                                    "Excluding GST Value"+"$totalAmount\n "
                                        "Including GST Value"+"$totalAmount1"),
                                  actions: <Widget>[
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
                             },
                            );
                          }, child: Text("Calculate")),
                      ]
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Container(
                        height: 100,
                        width: 300,
                        child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  controller: _height,
                                  decoration: InputDecoration(
                                    hintText: "Enter your height in cm",
                                    hintStyle: TextStyle(color: Colors.cyanAccent),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  controller: _weight,
                                  decoration: InputDecoration(
                                    hintText: "Enter your weight",
                                    hintStyle: TextStyle(color: Colors.cyanAccent),
                                    border: OutlineInputBorder(),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              ElevatedButton(onPressed: (){
                                double height = double.parse(_height.text);
                                double height2 = height/100;
                                double weight2 = double.parse(_weight.text);

                                double heightSquare = height2 * height2;
                                double result = weight2 / heightSquare;
                                if(result<18)
                                  {
                                    a="less weight, improve it.";
                                    showDialog<void>(context: context, builder: (BuildContext context)
                                    {
                                      return AlertDialog(
                                        backgroundColor: Colors.orangeAccent,
                                        title: const Text('BMI Calculation'),
                                        content:  Text(
                                          "height   "+ "$height\n"
                                              "Weight   "+"$weight2\n"
                                              "BMI is   "+"$result\n"
                                              "You are   "+"$a", style: TextStyle(fontSize: 15),),
                                        actions: <Widget>[
                                          TextButton(

                                            style: TextButton.styleFrom(foregroundColor: Colors.black,
                                              backgroundColor: Colors.yellowAccent,
                                              textStyle: Theme.of(context).textTheme.labelLarge,
                                              shadowColor: Colors.orangeAccent,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }, child: Text("okay"),
                                          ),
                                        ],
                                      );
                                    },
                                    );
                                  }
                                else if(result>18 &&  result<24)
                                  {
                                    a="Normal, maintain it";
                                    showDialog<void>(context: context, builder: (BuildContext context)
                                    {
                                      return AlertDialog(
                                        backgroundColor: Colors.greenAccent,
                                        title: const Text('BMI Calculation'),
                                        content:  Text(
                                          "height   "+ "$height\n"
                                              "Weight   "+"$weight2\n"
                                              "BMI is   "+"$result\n"
                                              "You are   "+"$a", style: TextStyle(fontSize: 15),),
                                        actions: <Widget>[
                                          TextButton(

                                            style: TextButton.styleFrom(foregroundColor: Colors.black,
                                              backgroundColor: Colors.yellowAccent,
                                              textStyle: Theme.of(context).textTheme.labelLarge,
                                              shadowColor: Colors.orangeAccent,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }, child: Text("okay"),
                                          ),
                                        ],
                                      );
                                    },
                                    );
                                  }
                                else
                                  {
                                    a="Over weight, consider it";
                                    showDialog<void>(context: context, builder: (BuildContext context)
                                    {
                                      return AlertDialog(
                                        backgroundColor: Colors.redAccent,
                                        title: const Text('BMI Calculation'),
                                        content:  Text(
                                          "height   "+ "$height\n"
                                              "Weight   "+"$weight2\n"
                                              "BMI is   "+"$result\n"
                                              "You are   "+"$a", style: TextStyle(fontSize: 15),),
                                        actions: <Widget>[
                                          TextButton(

                                            style: TextButton.styleFrom(foregroundColor: Colors.black,
                                              backgroundColor: Colors.yellowAccent,
                                              textStyle: Theme.of(context).textTheme.labelLarge,
                                              shadowColor: Colors.orangeAccent,
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }, child: Text("okay"),
                                          ),
                                        ],
                                      );
                                    },
                                    );
                                  }
                              }, child: Text("Find me")),
                            ]
                        ),
                      ),
                    ),
                  ]),
                ),
      ]
        ),
      ),
    );
  }
}
