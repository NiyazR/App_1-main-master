import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Marafon (),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Marafon  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MarafonState();
  }
}

class MarafonState extends State<Marafon > {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(

        iconTheme: (
            IconThemeData(
                color: Colors.black)),

        title: Container(

            child: Text("Марафон",style: TextStyle(color: Colors.black),)),

        actions: <Widget>[
          IconButton(

            icon: Icon(Icons.trending_up_rounded, color: Colors.black,),

            onPressed: () {


            },
          ), //IconButton
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
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),


                margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
                elevation: 10.0,
                child: SizedBox(
                  height: 230.0,

                ),
              ),

            ],
          ),
          Container(
            margin: EdgeInsets.only(top:510,left: 270),
            child:IconButton(

              icon: Icon(Icons.add_circle, color: Colors.red[700],size: 60,),
              tooltip: 'search',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}