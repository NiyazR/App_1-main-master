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
      home: Hobby(),
    );
  }
}


class Hobby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);
    return Scaffold(
        appBar: AppBar(
          title: Text("Хобби",style: TextStyle(color: Colors.black,fontSize: width/18),),

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


            Container(
              margin: EdgeInsets.only(right: 25,left: 25,top: 25),
              width: 322,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white,width: 4
                    ,),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://sxodim.com/uploads/astana/2019/06/photo_251909.jpg'),)),
              child: SingleChildScrollView(
                child: Container(
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                      child: Row(



                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),




                              child:

                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Домбыра',style: TextStyle(fontSize: 20, color: Colors.white)),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),


                                      child: Text(''
                                          'үйрену',style: TextStyle(fontSize: 20,color: Colors.white))),
                                ],
                              )),


                        ],
                      ),




                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
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
              ),


            ),
            Container(
              margin: EdgeInsets.only(right: 25,left: 25,top: 25),
              width: 322,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white,width: 4
                    ,),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://sxodim.com/uploads/astana/2019/06/photo_251909.jpg'),)),
              child: SingleChildScrollView(
                child: Container(
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                      child: Row(



                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20),




                              child:

                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Домбыра',style: TextStyle(fontSize: 20, color: Colors.white)),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),


                                      child: Text(''
                                          'үйрену',style: TextStyle(fontSize: 20,color: Colors.white))),
                                ],
                              )),


                        ],
                      ),




                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
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
              ),


            ),
            Container(
              margin: EdgeInsets.only(right: 25,left: 25,top: 25),
              width: 322,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white,width: 4
                    ,),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://sxodim.com/uploads/astana/2019/06/photo_251909.jpg'),)),
              child: SingleChildScrollView(
                child: Container(
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                      child: Row(



                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20),




                              child:

                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Домбыра',style: TextStyle(fontSize: 20, color: Colors.white)),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),


                                      child: Text(''
                                          'үйрену',style: TextStyle(fontSize: 20,color: Colors.white))),
                                ],
                              )),


                        ],
                      ),




                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
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
              ),


            ),
            Container(
              margin: EdgeInsets.only(right: 25,left: 25,top: 25),
              width: 322,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white,width: 4
                    ,),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://sxodim.com/uploads/astana/2019/06/photo_251909.jpg'),)),
              child: SingleChildScrollView(
                child: Container(
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                      child: Row(



                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20),




                              child:

                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Домбыра',style: TextStyle(fontSize: 20, color: Colors.white)),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),


                                      child: Text(''
                                          'үйрену',style: TextStyle(fontSize: 20,color: Colors.white))),
                                ],
                              )),


                        ],
                      ),




                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
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
              ),


            ),
            Container(
              margin: EdgeInsets.only(right: 25,left: 25,top: 25),
              width: 322,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white,width: 4
                    ,),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://sxodim.com/uploads/astana/2019/06/photo_251909.jpg'),)),
              child: SingleChildScrollView(
                child: Container(
                  child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                      child: Row(



                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20),




                              child:

                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Домбыра',style: TextStyle(fontSize: 20, color: Colors.white)),
                                  Container(
                                      margin: EdgeInsets.only(right: 20),


                                      child: Text(''
                                          'үйрену',style: TextStyle(fontSize: 20,color: Colors.white))),
                                ],
                              )),


                        ],
                      ),




                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
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
              ),


            ),



          ],
        )
    );
  }
}
