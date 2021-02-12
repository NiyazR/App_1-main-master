import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
class book_user extends StatefulWidget {
  @override
  _book_user createState() => _book_user();
}

class _book_user extends State<book_user> {

  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Кітап оқу",style: TextStyle(color: Colors.black),)),

          actions: <Widget>[
            //IconButton
            //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 50.0,
          //IconButton

        ),
        body: Stack(

          children: [
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(

                        child: SizedBox(
                          height: 50,
                          width: 160,

                            child: RaisedButton(
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                highlightElevation: 20.0,

                                hoverColor: Colors.white,
                                color: Colors.white,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(

                                          child:

                                          Text('Оқылған',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))),
                                      Container(

                                          child:

                                          Text('кітаптар',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))),

                                    ],
                                  ),
                                ),

                                textColor: Colors.black,


                                disabledTextColor: Colors.black,
                                disabledColor: Colors.grey,
                                onPressed: (){

                                }

                            ),
                          ),
                        ),
                      Container(

                        child: SizedBox(
                          height: 50,
                          width: 160,

                            child: RaisedButton(




                                elevation: 10.0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                highlightElevation: 20.0,

                                hoverColor: Colors.white,
                                color: Colors.white,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(

                                          child:

                                         SingleChildScrollView(
                                             scrollDirection: Axis.vertical,

                                             child: Text('Оқылған',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)))),
                                      Container(

                                          child:

                                          SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Text('әңгімелер',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)))),

                                    ],
                                  ),
                                ),

                                textColor: Colors.black,


                                disabledTextColor: Colors.black,
                                disabledColor: Colors.grey,
                                onPressed: () {


                                }

                            ),

                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  elevation: 10.0,
                  child: SizedBox(
                    height: 120.0,
                    child: InkWell(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 10),
                                  child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(7.0),
                                      child: Image.network('https://cdn.kitap.kz/storage//uploads/books/1096/Img_book.jpg', height: 100,width: 70,))
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10,left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 40),
                                  child: Row(

                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(

                                            child: Text('Қартқожа',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                                          ),
                                          Container(

                                            child: Text('Ж.Аймауытов',style: TextStyle(fontSize: 15)),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: SizedBox(
                                        height: 23,
                                        child: new Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            new FloatingActionButton(
                                              onPressed: add,
                                              child: new Icon(Icons.add_circle_outlined , color: Colors.red[700],),
                                              backgroundColor: Colors.white,),

                                            new Text('$_n',
                                                style: new TextStyle(fontSize: 23.0)),

                                            new FloatingActionButton(
                                              onPressed: minus,
                                              child: new Icon(Icons.remove_circle, color: Colors.red[700],),
                                              backgroundColor: Colors.white,),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(margin: EdgeInsets.only(top: 20),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,

                                          children: [
                                            Text('38',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                            Container(margin:EdgeInsets.only(left: 5),child: Text('бет',style: TextStyle(fontSize: 15))),
                                          ],
                                        )),
                                  ],
                                ),
                              ],




                            ),
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
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  elevation: 10.0,
                  child: SizedBox(
                    height: 120.0,
                    child: InkWell(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 10),
                                  child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(7.0),
                                      child: Image.network('https://cdn.kitap.kz/storage//uploads/books/1096/Img_book.jpg', height: 100,width: 70,))
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10,left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 40),
                                  child: Row(

                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(

                                            child: Text('Қартқожа',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                                          ),
                                          Container(

                                            child: Text('Ж.Аймауытов',style: TextStyle(fontSize: 15)),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: SizedBox(
                                        height: 23,
                                        child: new Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            new FloatingActionButton(
                                              onPressed: add,
                                              child: new Icon(Icons.add_circle_outlined , color: Colors.red[700],),
                                              backgroundColor: Colors.white,),

                                            new Text('$_n',
                                                style: new TextStyle(fontSize: 23.0)),

                                            new FloatingActionButton(
                                              onPressed: minus,
                                              child: new Icon(Icons.remove_circle, color: Colors.red[700],),
                                              backgroundColor: Colors.white,),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(margin: EdgeInsets.only(top: 20),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,

                                          children: [
                                            Text('38',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                            Container(margin:EdgeInsets.only(left: 5),child: Text('бет',style: TextStyle(fontSize: 15))),
                                          ],
                                        )),
                                  ],
                                ),
                              ],




                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

             Column(
                mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 IconButton(

                    icon: Icon(Icons.add_circle, color: Colors.red[700],size: 60,),
                    tooltip: 'search',
                    onPressed: () {},
                  ),
               ],
             ),

          ],
        ),
      ),
    );
  }
}


