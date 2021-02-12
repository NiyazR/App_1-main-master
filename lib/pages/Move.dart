import 'package:flutter/cupertino.dart';

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
      home: Movie(),
    );
  }
}


class Movie extends StatelessWidget {


  createAlertDialog(BuildContext context) {

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context)
    {
      return AlertDialog(
        backgroundColor: Colors.white,


        title: Container(


          width: 40,
          height: 60,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 15),
                child: RaisedButton(


                  color: Colors.red,


                  hoverColor: Colors.red,


                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  child: SizedBox(
                    height:50 ,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(

                        children: [
                          const Text('Қазақша ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                          const Text('фильмдер',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),



                  onPressed: () {

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: RaisedButton(


                  color: Colors.red,


                  hoverColor: Colors.red,


                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  child: SizedBox(
                    height:50 ,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(

                        children: [
                          const Text('Орысша ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                          const Text('фильмдер',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                  ),



                  onPressed: () {

                  },
                ),
              ),


            ],


          ),
        ),

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);
    return Scaffold(
        appBar: AppBar(
          title: Text("Кино",style: TextStyle(color: Colors.black,fontSize: width/18),),

          actions: <Widget>[
            IconButton(

              icon: Icon(Icons.search, color: Colors.black,),
              tooltip: 'search',
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());











              },
            ),
            IconButton(

                icon: Icon(Icons.tune, color: Colors.black,),
                tooltip: 'tune Icon',
                onPressed: () {
                  createAlertDialog(context);
                }


            ),
            //IconButton
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
        ), //A

        drawer: NiyazDrawer(),

        body: ListView(

          children: [


            Container(

              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),


                ],
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),


                ],
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),


                ],
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),


                ],
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),
                  Container(


                    child: SizedBox(
                      height: 150,
                      width: 92,
                      child: GestureDetector(
                          child: Column(
                            children: [
                              ClipRRect(

                                  borderRadius: BorderRadius.circular(15),

                                  child: Image.network('https://static.hdrezka.ac/i/2019/1/15/if447a7cb91c4cz96z27o.jpg',
                                    width: 92,
                                    height: 120 ,)

                              ),
                              Container(
                                  margin:EdgeInsets.only(top: 10),child: Text('1+1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],



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
                    ),
                  ),


                ],
              ),
            ),
          ],
        )
    );
  }
}

class DataSearch extends SearchDelegate<String>{

  final cities = [
    "1+1",
    "Алматы",
    "Один дома ",
    "Один дома  2",
    "Один дома 3",
    "Марвел ",

  ];

  final reecentCities = [

  ];








  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear), onPressed: (){

        query = "";

      })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(icon:

    AnimatedIcons.menu_arrow,
      progress: transitionAnimation,), onPressed: (){

      close(context, null);


    });
  }

  @override
  Widget buildResults(BuildContext context) {

    return Card(
      color: Colors.red,
      shape: StadiumBorder(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?reecentCities:cities.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(

      itemBuilder: (context,index)=>ListTile(
        onTap: (){
          showResults(context);},

        leading: Icon(Icons.movie_filter_sharp,color: Colors.red,),
        title: RichText(text: TextSpan(

            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
            children:  [TextSpan(text: suggestionList[index].substring(query.length),
              style: TextStyle(color: Colors.black87),

            )]

        )),




      ),
      itemCount: suggestionList.length,
    );


  }
}
