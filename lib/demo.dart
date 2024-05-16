import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: 400,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 20, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
              ),

              itemCount: 5, // total number of items
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blue, // color of grid items
                  child: Center(
                    child: Text(
                      "ok",
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),


          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,

              itemCount: 5,
                itemBuilder: (BuildContext con,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.cyanAccent,
                          child: Text("ok"),
                        ),
                      );
                    }
            ),
          ),


          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: 15,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
            {
              return Container(
                height: 100,
                width: 200,
                color: Colors.cyanAccent,
                child: Text(itemIndex.toString()),
              );
            }
          )

        ],
      ),
    );
  }
}
