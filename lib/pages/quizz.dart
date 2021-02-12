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
      home: Quiz(),
    );
  }
}


class Quiz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);
    return Scaffold(
        appBar: AppBar(
          title: Text("Quizz",style: TextStyle(color: Colors.black,fontSize: width/18),),

          actions: <Widget>[
            IconButton(

              icon: Icon(Icons.search, color: Colors.black,),
              tooltip: 'search',
              onPressed: () {},
            ), //IconButton
            //IconButton
          ], //<Widget>[]
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


        body: ListView(
          children: [



            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              elevation: 10.0,
              child: SizedBox(
                height: 100.0,
                child: InkWell(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31,top: 15),
                            child: Container(
                                width: 70,
                                height: 70,





                                child: Image.network('https://www.ikea.com/kr/en/images/products/pappis-box-with-lid-brown__0710998_PE727873_S5.JPG', height: 100,width: 100,)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Container(



                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 20),
                                        child: Text('ҰБТ дайындық',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                      ))),
                            ],


                          ),



                          Row(
                            children: [
                              Container(

                                margin: EdgeInsets.only(top: 15,left: 10),
                                width: 105,height: 25,



                                child: RaisedButton(


                                    color: Colors.red,


                                    hoverColor: Colors.red,


                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                                      child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                        children: [
                                          const Text('Тестті тапсыру',textAlign: TextAlign.center,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                                        ],
                                      )),





                                    onPressed: ()async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      };
                                    }


                                ),
                              ),
                            ],
                          ),
                        ],

                      ),

                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              elevation: 10.0,
              child: SizedBox(
                height: 100.0,
                child: InkWell(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31,top: 15),
                            child: Container(
                                width: 70,
                                height: 70,





                                child: Image.network('https://www.ikea.com/kr/en/images/products/pappis-box-with-lid-brown__0710998_PE727873_S5.JPG', height: 100,width: 100,)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Container(



                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 20),
                                        child: Text('ҰБТ дайындық',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                      ))),
                            ],


                          ),



                          Row(
                            children: [
                              Container(

                                margin: EdgeInsets.only(top: 15,left: 10),
                                width: 105,height: 25,



                                child: RaisedButton(


                                    color: Colors.red,


                                    hoverColor: Colors.red,


                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            const Text('Тестті тапсыру',textAlign: TextAlign.center,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                                          ],
                                        )),





                                    onPressed: ()async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      };
                                    }


                                ),
                              ),
                            ],
                          ),
                        ],

                      ),

                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              elevation: 10.0,
              child: SizedBox(
                height: 100.0,
                child: InkWell(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 31,top: 15),
                            child: Container(
                                width: 70,
                                height: 70,





                                child: Image.network('https://www.ikea.com/kr/en/images/products/pappis-box-with-lid-brown__0710998_PE727873_S5.JPG', height: 100,width: 100,)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Container(



                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 20),
                                        child: Text('ҰБТ дайындық',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                      ))),
                            ],


                          ),



                          Row(
                            children: [
                              Container(

                                margin: EdgeInsets.only(top: 15,left: 10),
                                width: 105,height: 25,



                                child: RaisedButton(


                                    color: Colors.red,


                                    hoverColor: Colors.red,


                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            const Text('Тестті тапсыру',textAlign: TextAlign.center,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                                          ],
                                        )),





                                    onPressed: ()async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      };
                                    }


                                ),
                              ),
                            ],
                          ),
                        ],

                      ),

                    ],
                  ),
                ),
              ),
            ),






          ],

        )
    );
  }

}
