import 'package:flutter/material.dart';

class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {

  // int _variable = 0;
  //
  // void tap(variable)
  // {
  //   setState(() {
  //     _variable = variable;
  //   });
  // }

  List a = [
    "Iragai Poley",
    "Thaakkuthe Kan Thaakkuthe",
    "Enkeyoo Partha",
    "Thuli Thuli",
    "Arabu Naadu",
    "Kan Pesum Varthaigal",
    "Rowdy Baby",
    "Kadhal Asai",
    "En Nanbane",
    "Open the bottle",
    "Kadhal Asai",
    "En Nanbane",
    "Open the bottle",
    "Kadhal Asai",
    "En Nanbane",
    "Open the bottle",
    "Kadhal Asai",
    "En Nanbane",
    "Open the bottle",
  ];

 //var ag = Image.network("src");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black38,
      body:
                CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
//             backgroundColor:Colors.black26,
            snap: true,
            pinned: true,
            floating: true,
            expandedHeight: 300.0,

            flexibleSpace:FlexibleSpaceBar(
              title: Text("Yuvan Love Drugs",style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),centerTitle: true,
              background:
              Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 290,
                    width: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                       end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff8c60c7).withOpacity(0.0),
                          Color(0xff3e5fc7).withOpacity(0.8),],
                      ),
                    ),
                    child:   Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 35,
                                width: 180,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                                      hintText: "Find in Playlist",
                                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Sort",
                                    hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                        Container(

                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuttfaDOzm9s1WSTNWp0Yl9rHbJA4WjScwjw&usqp=CAU",
                            fit: BoxFit.fill,),
                        ),
                      ],
                    ),
                  ),
                ]
              ),
              collapseMode: CollapseMode.pin,
            ),
            leading: Icon(Icons.arrow_back_ios_new_outlined),
          ),

      SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return
              Padding(
              padding: const EdgeInsets.all(1.0),
              child: ListTile(
                leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/u1.jpg"),),
                title: Column(
                  children: [
                    Text(a[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    Column(
                children: [
                  SizedBox(height: 0.0,),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 45,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),
                        child: Center(child: Text("Lyrics",style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 12),)),
                      ),
                      Text("Yuvan Shankar Raja",style: TextStyle(color: Colors.white, fontSize: 12),),
                    ]
                  ),
                    ]
              ),
                  ]
                ),
                trailing: Icon(Icons.more_vert),
              ),
            );
          },
          childCount: a.length,
        ),
      ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.cyan), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.cyan),label:"Serach"),
      //     BottomNavigationBarItem(icon: Icon(Icons.library_add_check,color: Colors.cyan),label: "Your Library"),
      //     BottomNavigationBarItem(icon: Icon(Icons.workspace_premium,color: Colors.cyan),label: "Premium"),
      //   ],
      //   currentIndex: _variable,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: tap,
      // ),
    );
  }
}


class qwerty extends StatefulWidget {
  const qwerty({super.key});

  @override
  State<qwerty> createState() => _qwertyState();
}

class _qwertyState extends State<qwerty> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController
      (
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [SliverAppBar(
              expandedHeight: 400,
              backgroundColor: Colors.cyan,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("hello"),
                background: Column(
                  children: [
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(),
                    CircleAvatar(),
                    Text("hello")

                  ],
                ),
              ),
            )];
          },
          body: Column(
            children: [
              CircleAvatar(),
              CircleAvatar(),
              CircleAvatar(),
              CircleAvatar(),
            ],
          ),

        ),
    );
  }
}

