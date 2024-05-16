import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';


class ecom1 extends StatefulWidget {
  const ecom1({super.key});

  @override
  State<ecom1> createState() => _ecom1State();
}

class _ecom1State extends State<ecom1> {

  String dropdownvalue = 'Fashion';

 List a = [

  'assets/grocery.jpg',
  'assets/mobiles.jpg',
  'assets/fashions.jpg',
  'assets/electronics.jpg',
  'assets/furnitures.jpg',
  'assets/appliances.jpg',
  'assets/travel.jpg',
  ];

 List b = [
   "Grocerices",
   "Mobiles",
   "Trending Fashions",
   "Electronics",
   "Home & Furnitures",
   "Applience",
   "Travel",
 ];

 List c = [

   'assets/new sales.jpg',
   'assets/summer sales.jpg',
   'assets/electronics sales.jpg',
 ];

 List d = [
   "https://images.unsplash.com/photo-1502982720700-bfff97f2ecac?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGNhbWVyYXxlbnwwfHwwfHx8MA%3D%3D",
   "https://rukminim2.flixcart.com/image/850/1000/xif0q/keyboard/desktop-keyboard/w/l/6/gaming-keyboard-with-87-keys-rgb-backlit-with-suspension-keys-original-imagzcgwtrabgjna.jpeg?q=90&crop=false",
   "https://cdn.shopify.com/s/files/1/0493/9834/9974/files/portable-charger-power-banks_480x480.jpg?v=1685067545",
   "https://m.media-amazon.com/images/I/71NUq7BlqYL._AC_UF1000,1000_QL80_.jpg",
   "https://uk.remington-europe.com/media/catalog/product/4/1/41209540100_9694_straight-on.png?quality=80&fit=bounds&height=322&width=322&canvas=322:322",
   "https://img.freepik.com/free-photo/modern-indoor-living-room-with-comfortable-sofa-generative-ai_188544-19449.jpg",
 ];

 List e = [
   "Top Mirror Less Cameras",
   "Keyboard",
   "Sandisk Extreme Portable",
   "Printer",
   "Best of shavers",
   "Led TV",
 ];

  List f = [
    "min 15% off",
    "from ₹1,005",
    "from ₹105",
    "from ₹4,100",
    "Up to 30% Off",
    "min 20% off",
  ];

  List g = [
    "Free Delivery",
    "Buy 2 items for Free Delivery",
    "Daily Saver",
    "Daily Saver",
    "min buy 3 items",
    "Free Delivery",
  ];

 List items = [
   'Mens Top wear',
   'Mens bottom wear',
   'Womens ethnic ',
   'Mens Foot wear',
   'womens Foot wear',
    ];

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
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
          Icon(Icons.person),
          Text("Login"),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 5,),
        Container(
          width: double.infinity,
          height: 140,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: a.length,
              itemBuilder: (BuildContext con,index)
              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: 75,
                      child: Column(

                        children: [
                          Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(a[index]),
                                fit: BoxFit.fill),
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(b[index],style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold, fontSize: 11,),),
                          ),
                                               ]
                      ),
                    ),
                );
              }
          ),
                ),
        
            SizedBox(height: 0,),
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 120,
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
                itemCount: c.length,
                itemBuilder: (BuildContext context, int index, int pageViewIndex) {
                  return Container(
                    width: 300,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(c[index]),
                        fit: BoxFit.fill,
                      )
                    ),
                  );
                }
                  ),
            Center(
              child: DotsIndicator(
                dotsCount: 5,
                  decorator: DotsDecorator(color: Colors.orangeAccent,
                activeSize: Size.square(15.0),
                activeShape: CircleBorder(),
              ),
              ),
            ),
        
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Best of Electronics",style: TextStyle(color: Colors.lime,fontWeight: FontWeight.bold),),
            ),
        
            Container(
              width: 340,
              height: 210,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: d.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 25,
                        width: 95,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 70,
                                  width: 170,
                                  child:  Image.network(d[index],
                                     fit: BoxFit.fill,),
                                ),
        
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(e[index],style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 1, softWrap: false,),
                              ),
                              Text(f[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),overflow: TextOverflow.ellipsis,maxLines: 1, softWrap: false,),
                              Text(g[index],style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),overflow: TextOverflow.ellipsis,maxLines: 1, softWrap: false,),
                    ]
                        ),
                      ),
                    );
                  }
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Hot Picks!",style: TextStyle(color: Colors.lime,fontWeight: FontWeight.bold),),
            ),
            Container(
              width: 340,
              height: 210,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: d.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 25,
                        width: 95,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 70,
                                  width: 170,
                                  child:  Image.network(d[index]),
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(e[index],style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 1, softWrap: false,),
                              ),
                              Text(f[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),overflow: TextOverflow.ellipsis,maxLines: 1, softWrap: false,),
                              Text(g[index],style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),overflow: TextOverflow.ellipsis,maxLines: 1, softWrap: false,),
                            ]
                        ),
                      ),
                    );
                  }
              ),
            ),
            Container(
              height: 100,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 3.0,
                ),
                itemCount: 5, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                        children: [
                          SizedBox(height: 1,),
                          Row(
                             children: [
                                Container(
                                  child: Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              image: DecorationImage(
                                                image: AssetImage("assets/ear pods.jpg"),
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              image: DecorationImage(
                                                image: AssetImage("assets/lights.jpg"),
                                              )
                                          ),
                                        ),

                                      ]
                                  ),
                                )
                      ]
                          ),
                          Row(
                               children: [
                                Container(
                                  child: Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              image: DecorationImage(
                                                image: AssetImage("assets/ear pods.jpg"),
                                              )
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              image: DecorationImage(
                                                image: AssetImage("assets/lights.jpg"),
                                              )
                                          ),
                                        ),

                                      ]
                                  ),
                                )
                              ]
                          ),
                        ]
                    ),
                          );
                },
              ),
            ),
             ]
            ),
      ),
          );
  }
}
