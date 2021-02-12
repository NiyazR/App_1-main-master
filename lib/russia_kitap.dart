import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';


class Russian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 30),
              child: Text("Орысша кітаптар",style: TextStyle(color: Colors.black),)),
          iconTheme: (
              IconThemeData(
                  color: Colors.black,)),


          backgroundColor: Colors.white,
          elevation: 50.0,
          //IconButton
          brightness: Brightness.dark,
        ), //AppBar

        body: ListView(

          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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
                  margin: EdgeInsets.only(top: 20,left: 20),
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








          ],
        )
    );
  }
}