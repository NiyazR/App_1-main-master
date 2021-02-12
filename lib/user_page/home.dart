import 'package:drawer_for_nias/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class  Home_user extends StatefulWidget {
  @override
  _Home_user createState() => _Home_user();
}

class _Home_user extends State< Home_user> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170.0),
          child:   AppBar(


            backgroundColor: Colors.white,

                   flexibleSpace: Container(

                     margin: EdgeInsets.only(top: 30),
                     child: FlexibleSpaceBar(
                           centerTitle: true,
                                title: Center(

                                     child: Column(

                                             children: <Widget>[
                                               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                 children: [
                                                   Column(
                                                     mainAxisAlignment: MainAxisAlignment.center,
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                     children: <Widget>[
                                                       Container(
                                                         margin: EdgeInsets.only(right: 299),
                                                         child: IconButton(

                                                           icon: Transform.rotate(
                                                             angle: 0 * pi/180,
                                                             child: Icon(Icons.sort_outlined,size: 25,),
                                                           ),

                                                           onPressed: () {
                                                             Navigator.push(context, MaterialPageRoute(builder: (context) =>  NiasApp()),
                                                             );

                                                           },
                                                         ),
                                                       ),

                                                     ],
                                                   ),


                                                 ],
                                               ),




                                                 Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                   children: [
                                                     Column(
                                                       mainAxisAlignment: MainAxisAlignment.center,
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         Text(
                                                           'Username',
                                                           style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                                         ),
                                                         Text(
                                                           'User@gmail.com',
                                                           style: TextStyle(color: Colors.black),
                                                         ),
                                                       ],
                                                     ),
                                                     CircleAvatar(
                                                radius: 45,
                                                      child: Image.network('https://avatanplus.com/files/resources/original/5bb23ac06077d16630357f8b.jpg',),


                ),

                                                   ],
                                                 ),
              ],
            ),
          ),
        ),
                   ),
             ),

        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),


              margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
              elevation: 6.0,
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.book_outlined,
                      ),
                      Row(
                        children: [
                          Container(
                              child:
                              Container(


                                    child: Text('Кітап оқу',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

                              )
                          ),

                        ],


                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                  child:
                                  Container(
                                    margin: EdgeInsets.only(left: 10),

                                    child: Text('843',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

                                  )
                              ),

                            ],


                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [

                                Text('бет ')

                              ],
                            ),
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
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
              elevation: 6.0,
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.comment_outlined,
                      ),
                      Row(children: [
                          Container(
                              child:
                              Container(
                                child: Row(

                                  children: [
                                    Text('Quiz',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                  ],
                                ),

                              )
                          ),

                        ],
                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                  child:
                                  Container(
                                    margin: EdgeInsets.only(left: 50),



                                    child: Text('280',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

                                  )
                              ),

                            ],


                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [

                                Text('балл ')

                              ],
                            ),
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
                  borderRadius: BorderRadius.circular(10)),


              margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
              elevation: 6.0,
              child: SizedBox(
                height: 60.0,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.directions_run_rounded,
                      ),
                      Row(
                        children: [
                          Container(
                              child:
                              Container(


                                child: Text('Спорт',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

                              )
                          ),

                        ],


                      ),
                      Row(

                        children: [
                          Row(
                            children: [
                              Container(
                                  child:
                                  Container(
                                    margin: EdgeInsets.only(left: 50),

                                    child: Text('152',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),

                                  )
                              ),

                            ],


                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [

                                Text('мин ')

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),



          ],
        ),

      ),
    );
  }
}