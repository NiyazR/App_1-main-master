import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class sport_user extends StatefulWidget {
  @override
  _sport_user createState() => _sport_user();
}

class _sport_user extends State<sport_user> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Спорт",style: TextStyle(color: Colors.black),)),

          actions: <Widget>[
            IconButton(

              icon: Icon(Icons.trending_up_rounded , color: Colors.black,),

              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );},
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
                    height: 90.0,
                    child: InkWell(
                      child: Row(

                        children: [

                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.directions_run_rounded, color: Colors.black,size: 22,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('Жүгіру',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.event, color: Colors.black,size: 21,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('19.01',style: TextStyle(fontSize: 15),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer_outlined , color: Colors.black,size: 19,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('56',style: TextStyle(fontSize: 15),)),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('мин',style: TextStyle(fontSize: 15),)),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,

                                  children: [


                                    Container(
                                      margin: EdgeInsets.only(left: 120,bottom: 10),
                                      child: Row(
                                        children: [

                                          Container(margin:EdgeInsets.only(left: 5),child: Text('6340',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                          Container(margin:EdgeInsets.only(left: 5),child: Text('қадам',style: TextStyle(fontSize: 15),)),
                                        ],
                                      ),
                                    ),
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
                    height: 90.0,
                    child: InkWell(
                      child: Row(

                        children: [

                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.directions_run_rounded, color: Colors.black,size: 22,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('Жүгіру',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.event, color: Colors.black,size: 21,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('19.01',style: TextStyle(fontSize: 15),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer_outlined , color: Colors.black,size: 19,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('56',style: TextStyle(fontSize: 15),)),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('мин',style: TextStyle(fontSize: 15),)),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,

                                  children: [


                                    Container(
                                      margin: EdgeInsets.only(left: 120,bottom: 10),
                                      child: Row(
                                        children: [

                                          Container(margin:EdgeInsets.only(left: 5),child: Text('6340',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                          Container(margin:EdgeInsets.only(left: 5),child: Text('қадам',style: TextStyle(fontSize: 15),)),
                                        ],
                                      ),
                                    ),
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
                    height: 90.0,
                    child: InkWell(
                      child: Row(

                        children: [

                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.directions_run_rounded, color: Colors.black,size: 22,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('Жүгіру',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.event, color: Colors.black,size: 21,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('19.01',style: TextStyle(fontSize: 15),)),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.timer_outlined , color: Colors.black,size: 19,),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('56',style: TextStyle(fontSize: 15),)),
                                        Container(margin:EdgeInsets.only(left: 5),child: Text('мин',style: TextStyle(fontSize: 15),)),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,

                                  children: [


                                    Container(
                                      margin: EdgeInsets.only(left: 120,bottom: 10),
                                      child: Row(
                                        children: [

                                          Container(margin:EdgeInsets.only(left: 5),child: Text('6340',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                          Container(margin:EdgeInsets.only(left: 5),child: Text('қадам',style: TextStyle(fontSize: 15),)),
                                        ],
                                      ),
                                    ),
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


      ),
    );
  }
}




class SecondRoute extends StatelessWidget {
  @override
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  var data1 = [1.0,-5.0,3.5,-2.0,0.5,0.7,0.8,1.0,2.0,3.0,3.2];


  Material mychart1Items(String title, String priceVal,String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 10.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.red[700],
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(

            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text(title, style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black87,
                            ),),
                       ],
                     ),






                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Sparkline(
                          data: data,
                          lineColor: Colors.red,
                          pointsMode: PointsMode.all,
                          pointSize: 8.0,
                          pointColor: Colors.red,
                        ),
                   ),



                ],
              ),
            ],
          ),
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),  onPressed: () => Navigator.of(context).pop(null),
        ),

        title: Text('Рейтинг',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: <Widget>[

          ],
        backgroundColor: Colors.white,
      ),
      body:Container(
        color:Color(0xffE5E5E5),
        child:StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mychart1Items("Қазақстан тарихы","",""),
            ),
          ],
          staggeredTiles: [
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(2, 250.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(4, 250.0),
          ],
        ),
      ),
    );
  }
}