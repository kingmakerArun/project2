import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class printer extends StatefulWidget {
  const printer({super.key});

  @override
  State<printer> createState() => _printerState();
}

class _printerState extends State<printer> {

  List product = [
    "TV",
    "Mobile",
    "Men",
    "Women",
    "Baby",
    "furniture",
    "Flights",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Image(image: AssetImage("assets/flipkart.jpg")),
        ),
        title: Center(
          child:
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search for Products, Brands and More",
              hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Login"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Become a Seller"),
          ),
          Text("More"),
          Icon(Icons.arrow_drop_down),
          Icon(Icons.shopping_cart),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Cart"),
          ),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
            itemBuilder: (BuildContext con,index)
            {
        return Padding(
        padding: const EdgeInsets.all(10.0),
            child: Column
            (
            children: [
            Container(
            height: 50,
            width: 40,
            child: Text(product[index]),
            ),
              SizedBox(height: 0,),
              Container(
                height: 75,
                width: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                            image: AssetImage("assets/printer.jpg"),
                            )
                              ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Text("Canon PIXMA E3370 Multi-function WiFi Color Inkjet Printer (Borderless Printing)  (Ink Cartridge)"),
                        )
                      ]
                    ),
                  ],
                ),
              )
            ],
            ),
            );
            }
            ),
            ),
          ],
        ),
      ),
    );
  }
}
