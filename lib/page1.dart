import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
//import 'package:photo_view/photo_view.dart';

class page1 extends StatefulWidget {
  const page1({super.key});


  @override

  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {

  List a = [
    "https://m.media-amazon.com/images/I/61QRgOgBx0L._SX679_.jpg",
    "https://m.media-amazon.com/images/I/71EA48-X7zL._SX679_.jpg",
    "https://m.media-amazon.com/images/I/61uaJPLIdML._SX679_.jpg",
    "https://m.media-amazon.com/images/I/510YZx4v3wL._SX679_.jpg",
    "https://m.media-amazon.com/images/I/61J6s1tkwpL._SX679_.jpg",
    "https://m.media-amazon.com/images/I/51YaKtDpWxL._SX679_.jpg",
  ];

  var _mycolorone = Colors.white;
  var _mycolortwo = Colors.white;
  var _mycolorthree = Colors.white;
  var _mycolorfour = Colors.white;
  var _mycolorfive = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        leading: Icon(Icons.arrow_back),
        title: Container(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search Amazon.in",
              hintStyle: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
              suffixIcon: Icon(Icons.camera_enhance_outlined),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            SizedBox(height: 5.0),
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 450,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.0,
                        //onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                      ),
                      itemCount: a.length,
                      itemBuilder: (BuildContext context, int index, int pageViewIndex)
                      {
                        return Container(
                          width: 600,
                          height: 500,
                          color: Colors.cyan,
                             // Maximum scale (zoom in)
                        child: Image.network(a[index],
                         fit: BoxFit.cover,),

                        );
                      }
                  ),
                ),
                Positioned(
                    top: 10,
                        left: 10,
                    child: Container
                      (
                      height: 30,
                      width: 30,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrIgJExPP-vZFH4kY-Kk_UBBsNDVok3KW8RZvH4satJq0exzdeF6PzEUMqcQ&s"),
                    ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container
                    (
                    height: 30,
                    width: 30,
                    child: Image.network("https://pngimg.com/d/share_PNG14.png"),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container
                    (
                    height: 30,
                    width: 30,
                    child: Image.network("https://i.pinimg.com/originals/1e/49/ed/1e49edc5e29496327a25954843565f8e.png"),
                  ),
                ),
              ]
            ),

            Center(
              child: DotsIndicator(
                dotsCount: a.length,
                decorator: DotsDecorator(color: Colors.orangeAccent,
                  activeSize: Size.square(15.0),
                  activeShape: CircleBorder(),
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: Text("Visit the OnePlus Store",style: TextStyle(color: Colors.cyanAccent),),
             ),
             Row(
                 children: [
                  IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState( () {
                   _mycolorone=Colors.orange;
                   _mycolortwo=Colors.white;
                   _mycolorthree=Colors.white;
                   _mycolorfour=Colors.white;
                   _mycolorfive=Colors.white;
                 }),color: _mycolorone,),
                 new IconButton(icon: new Icon(Icons.star),
                   onPressed: ()=>setState((){
                     _mycolorone=Colors.orange;
                     _mycolortwo=Colors.orange;
                     _mycolorthree=Colors.white;
                     _mycolorfour=Colors.white;
                     _mycolorfive=Colors.white;
                   }),color: _mycolortwo,),
                 new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                   _mycolorone=Colors.orange;
                   _mycolortwo=Colors.orange;
                   _mycolorthree=Colors.orange;
                   _mycolorfour=Colors.white;
                   _mycolorfive=Colors.white;
                 }),color: _mycolorthree,),
                 new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                   _mycolorone=Colors.orange;
                   _mycolortwo=Colors.orange;
                   _mycolorthree=Colors.orange;
                   _mycolorfour=Colors.orange;
                   _mycolorfive=Colors.white;
                 }),color: _mycolorfour,),
                 new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                   _mycolorone=Colors.orange;
                   _mycolortwo=Colors.orange;
                   _mycolorthree=Colors.orange;
                   _mycolorfour=Colors.orange;
                   _mycolorfive=Colors.orange;
                 }),color: _mycolorfive,),
                 ]
                 ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("OnePlus Nord CE 3 Lite 5G (Chromatic Gray, 8GB RAm, 128GB Storage",style: TextStyle(color: Colors.black),),
             ),
             Container(
               decoration: BoxDecoration(
                 border: Border(
                   bottom: BorderSide(width: 2.0, color: Colors.black),
                 ),
               ),
             ),
             Container(
               height: 260,
               width: 400,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text("Colour:"),
                       Text("Chromatic Gray",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                       Icon(Icons.arrow_drop_up),
                     ],
                   ),
                   SizedBox(height: 15,),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Container(
                           height: 170,
                           width: 130,
                           decoration: BoxDecoration(
                             border: Border.all(),
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(20.0),
                                 topRight: Radius.circular(20.0),
                               ),
                           ),
                       child: Column(
                           children:
                           [
                             SizedBox(height: 0,),
                             Container(
                               height: 130,
                               width: 130,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20.0),
                                     topRight: Radius.circular(20.0),
                                   ),
                             image: DecorationImage(
                               image: AssetImage("assets/Pastel Lime phone.jpg"),
                             ),
                           ),
                             ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 4.0,top: 12.0),
                                 child: Center(child: Text("Pastel Lime",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                               ),
                         ]
                         ),
                         ),
                         Container(
                           height: 170,
                           width: 130,
                           decoration: BoxDecoration(
                             border: Border.all(),
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(20.0),
                               topRight: Radius.circular(20.0),
                             ),
                           ),
                           child: Column(
                               children:
                               [
                                 SizedBox(height: 0,),
                                 Container(
                                   height: 130,
                                   width: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.only(
                                       topLeft: Radius.circular(20.0),
                                       topRight: Radius.circular(20.0),
                                     ),
                                     image: DecorationImage(
                                       image: AssetImage("assets/Chromatic Gray phone.jpg"),
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 4.0,top: 12.0),
                                   child: Center(child: Text("Chromatic Gray",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                                 ),
                               ]
                           ),
                         ),
                       ]
                   ),
                 ]
               ),
             ),
                         Container(
               decoration: BoxDecoration(
                 border: Border(
                   bottom: BorderSide(width: 1.0, color: Colors.black),
                 ),
               ),
             ),
             Column(
               children: [
                 SizedBox(height: 5.0,),
                 Container(
                   height: 30,
                   width: 150,
                   decoration: BoxDecoration(
                     border: Border.all(),
                     borderRadius: BorderRadius.circular(5),
                     color: Colors.red,
                   ),
                 child: Center(child: Text("Limited time deal",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(6.0),
                       child: Text("-10%",style: TextStyle(fontSize: 40,color: Colors.red),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(2.0),
                       child: Text("₹",style: TextStyle(fontSize: 12,color: Colors.black),),
                     ),
                     Text("17,999",style: TextStyle(fontSize: 40,color: Colors.black),),
                   ],
                 ),
                 Row(
                     children: [
                       Row(
                         children: [
                           Text("M.R.P.:",style: TextStyle(color: Colors.black38),),
                           Text("₹19,999",style: TextStyle(color: Colors.black38,decoration: TextDecoration.lineThrough,),),

                         ]
                       ),
                       ]
                 ),
                 Row(
                   children: [
                     Text("EMI",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                     Text("from ₹873. No Cost EMI available."),
                   ],
                 ),
                 Row(
                   children: [
                     Text("EMI options", style: TextStyle(color: Colors.blue),),
                   ],
                 ),
                 Row(
                   children: [
                     Text("Inclusive of all taxes"),
                   ]
                 ),
               ],
             ),
             Container(
               decoration: BoxDecoration(
                 border: Border(
                   bottom: BorderSide(width: 1.0, color: Colors.black),
                 ),
               ),
             ),
             Column(
               children: [
                 SizedBox(height: 7,),
                 Row(
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Total:", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                         ),
                         Text("₹17,999", style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.bold),),
                       ]
                     ),
                   ],

                 ),
                 Row(
                   children: [
                     Row(
                       children: [
                         Text("FREE delivery", style: TextStyle(color: Colors.cyan),),
                         Text("Sunday, 24 March.", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                         Text("Details", style: TextStyle(color: Colors.cyan),),
                       ],
                     ),
                   ],
                 ),
                 Row(
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Or fastest delivery"),
                         ),
                         Text("Tomorrow, 23 March.", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                       ]
                     ),
                   ]
                 ),
                 Center(
                   child: Row(
                     children: [
                       Container(
                         height: 30,
                         width: 130,
                         decoration: BoxDecoration(
                           border: Border.all(),
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.red,
                         ),
                         child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                       ),
                     ],
                   ),
                 ),
               ]
             ),
           ]
             ),
        ),
    );
  }
}




