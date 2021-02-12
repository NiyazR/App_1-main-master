import 'package:drawer_for_nias/qazaqwa_kitap.dart';
import 'package:drawer_for_nias/russia_kitap.dart';
import 'drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'kitap_bet_about.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NiasApp(),
    );
  }
}
class NiasApp extends StatelessWidget{


  createAlertDialog(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context)
    {
      return AlertDialog(
        backgroundColor: Colors.white,
          title: SizedBox(
            height: width/5,
            width: width/3,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  RaisedButton(
                    color: Colors.red,
                    hoverColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                    child: SizedBox(
                      height:50 ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            const Text('Қазақша ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            const Text('кітаптар',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),

                    ),
                    onPressed: ()  {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  Qazaqwa()),
                      );
                    },
                  ),
                  RaisedButton(
                    color: Colors.red,
                    hoverColor: Colors.red,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                    child: SizedBox(
                      height:50 ,


                        child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            const Text('Орысша ',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            const Text('кітаптар',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),

                    ),



                    onPressed: ()  {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  Russian()),
                      );
                    },
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



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Кітапхана",style: TextStyle(color: Colors.black,fontSize: width/18),),
          actions: <Widget>[
            IconButton(

              icon: Icon(Icons.search, color: Colors.black,),
              tooltip: 'search',
              onPressed: () {



              },
            ), //IconButton
            IconButton(

                icon: Icon(Icons.tune, color: Colors.black,),
                tooltip: 'tune Icon',
                onPressed: () {
                  createAlertDialog(context);
                }


            ), //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 50.0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu,color: Colors.black,),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          //IconButton
          brightness: Brightness.dark,
        ), //AppBar
        drawer: NiyazDrawer(),
        body: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10,left: 25,right: 25),
                child: Container(
                  width: width/1,
                  height: 150,
                  child: Center(
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:Radius.circular(20) ,
                              topRight: Radius.circular(20),
                              bottomLeft:Radius.circular(20) ,
                              bottomRight: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://news.wisc.edu/content/uploads/2019/12/aerial_UW_wide16_3086.jpg'),)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 12, // blur radius
                                )
                              ]),

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                  width: width/4.5,
                                  height: width/3,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                                child:
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25,left: 25,bottom: 5),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(

                                              child:
                                              Text('Осы айдың',style: TextStyle(fontSize:width/14,color: Colors.white))),
                                          Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Text('үздік кітабі ',style: TextStyle(fontSize: width/14, color: Colors.white))),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child:
                                              Text('Тастамашы Ана!',style: TextStyle(fontSize: 10,color: Colors.white, fontWeight: FontWeight.bold))),
                                          Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Text('А.Баймұхамедов ',style: TextStyle(fontSize: 12, color: Colors.white))),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            Expanded(
                child: ListView(children: [
                  //photo
                  Padding(
                    padding: const EdgeInsets.only(right: 150, left: 35, top: 10),
                    child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                      child: Text(
                        "Жаңа кітаптар",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: width/18),
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 30, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                           scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 150,left: 35

                    ),
                    child: Text(
                      "Ұсынылған",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: width/18),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 30, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 150,left: 35

                    ),
                    child: Text(
                      "Көп оқылған",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: width/18),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 30, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),

                          child: SizedBox(
                            height: 120,
                            width: 92,
                            child: GestureDetector(
                                child: Column(
                                  children: [
                                    Container
                                      (
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 12, // blur radius





                                        )

                                      ]),



                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),


                                        child: Image.network(
                                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                                          width: 80,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 7),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,

                                          child: Text(
                                            'Тастамашы,ана!',textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,

                                                fontSize: 11),
                                          ),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(top: 1),
                                        child: Text(
                                          'A.Баймұхамедов',
                                          style: TextStyle(fontSize: 10),
                                        )),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Kitap_about()),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}




