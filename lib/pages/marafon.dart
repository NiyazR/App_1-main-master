import '../drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Marathon(),
    );
  }
}

class Marathon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Марафон",style: TextStyle(color: Colors.black,fontSize: width/18),),


            backgroundColor: Colors.white,
            elevation: 50.0,
            leading: Builder(
              builder: (context) => IconButton(
                icon: new Icon(Icons.menu,color: Colors.black,),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ), //IconButton
            brightness: Brightness.dark,
          ), //AppBar
          drawer: NiyazDrawer(),
          body:
          Stack(
              children: <Widget>[
                ListView(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(right: 25,left: 25,top: 25),
                        width: 322,
                        height: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white,width: 3,),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://pbs.twimg.com/media/EXTWVljWAAE8-al.jpg'),)),



                        child: GestureDetector(
                                            child: SingleChildScrollView(

                                              scrollDirection: Axis.horizontal,

                                              child: Row(
                                                children: [

                                                     Container(
                                                          margin: EdgeInsets.only(left: 24,top: 5,bottom: 5),
                                                          child:
                                                          SingleChildScrollView(
                                                            scrollDirection: Axis.vertical,

                                                            child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Text('Кітап-алтын қазына',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold)),
                                                                Container(
                                                                    margin: EdgeInsets.only(top: 3),
                                                                    child: Text('Кітап оқу марафоны',style: TextStyle(fontSize: 14,color: Colors.white))),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                        margin: EdgeInsets.only(top: 4),
                                                                        child: Icon(Icons.calendar_today, color: Colors.white,size: 20,)),

                                                                          Container(
                                                                            margin: EdgeInsets.only(top: 4,left: 5),
                                                                              child: Text('22.01 - 1.02',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white))),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                        margin: EdgeInsets.only(top: 3),
                                                                        child: Icon(Icons.wallet_giftcard_rounded, color: Colors.white,size: 20,)),

                                                                    Container(
                                                                        margin: EdgeInsets.only(top: 5,left: 5),
                                                                        child: Text('Меломан дүкендер желісінен кітап',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11,color: Colors.white))),
                                                                  ],
                                                                ),



                                                              ],
                                                            ),
                                                          )

                                                    ),



                                                  Container(
                                                      margin: EdgeInsets.only(top: 60,left: 40),
                                                      child: Icon(Icons.near_me, color: Colors.white,size: 25)),
                                                ],
                                              ),
                                            ),
                                            onTap: ()async {
                                              const url = 'https://google.com';
                                              if (await canLaunch(url)) {
                                                await launch(url);
                                              } else {
                                                throw 'Could not launch $url';
                                              };
                                            }

                                    ),
                      ),),
                  ],
          )
      ]
          )
      ),
    );
  }
}
