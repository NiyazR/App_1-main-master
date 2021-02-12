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
      home: Podcast(),
    );
  }
}


class Podcast extends StatelessWidget {
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
             width: width/2,

          child: Row(

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
                      const Text('подкасттар',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),

                ),



                onPressed: ()  {


                },
              ),
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
                      const Text('подкасттар',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),

                ),



                onPressed: ()  {


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
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Подкаст",style: TextStyle(color: Colors.black,fontSize: width/18),),

            actions: <Widget>[
              IconButton(

                icon: Icon(Icons.search, color: Colors.black,),
                tooltip: 'search',
                onPressed: () {},
              ), //IconButton
              IconButton(

                  icon: Icon(Icons.tune, color: Colors.black,),
                  tooltip: 'tune Icon',
                  onPressed: () {
                    createAlertDialog(context);
                  }


              ),  //IconButton
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
          ),  //Ap
          drawer: NiyazDrawer(),// Bar
          body: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10,left: 20,right: 20),
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
                              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbXYb5CJM3orj2d2elwWkSfTP2e8Pk6rg78w&usqp=CAU'),)),
                        child: SizedBox(
                          height: width/2.5,
                          width: width/1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              SingleChildScrollView(
                                        child: Container(




                                            child:



                                               Column(
                                                children: [
                                                  Container(
                                                      margin: EdgeInsets.only(right: 20),
                                                      child:


                                                      Text('Подкаст',style: TextStyle(fontSize: width/18,color: Colors.white))),


                                                  Text('тындауға ыңғайлы ',style: TextStyle(fontSize: width/18, color: Colors.white)),

                                                  Container(
                                                      margin: EdgeInsets.only(right: 20),


                                                      child: Text(''
                                                          'программа',style: TextStyle(fontSize: width/18,fontFamily: 'Raleway', color: Colors.white))),

                                                ],
                                              ),
                                            )),
                              Container(

                                        margin: EdgeInsets.only(left: 10),

                                          child:


                                          Image.network('https://pnhvsh.com/wp-content/uploads/2020/05/Google_Podcasts_Logo.png', width: width/6,)),
                                   ]
                                  ),
                        ),

                        ),
                      ),
                    ),
                  ),
                ),


              Expanded(
                child: ListView(
                  children: [

                     Container(

                           margin: EdgeInsets.only(top: 15),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(

                                   child: SizedBox(
                                              height: width/2,
                                              width: 92,
                                              child: GestureDetector(
                                                  child: SingleChildScrollView(
                                                    scrollDirection: Axis.vertical,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                                              spreadRadius: 2, //spread radius
                                                              blurRadius: 12, // blur radius





                                                            )

                                                          ]),



                                                          child: Container(

                                                            width: 100,height: 100,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(10),


                                                              child: Image.network(

                                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                                            ),
                                                          ),
                                                        ),
                                                       SingleChildScrollView(
                                                         scrollDirection: Axis.horizontal,
                                                          child: Container(
                                                              margin: EdgeInsets.only(top: 7),
                                                              child: Text(
                                                                'Театрға барудың',
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 12),
                                                              )),
                                                        ),
                                                        Container(
                                                            margin: EdgeInsets.only(top: 2),
                                                            child: Text(
                                                              '3 себебі',
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 12),
                                                            )),
                                                        SingleChildScrollView(
                                                          scrollDirection: Axis.vertical,
                                                          child: Container(

                                                              margin: EdgeInsets.only(top: 1),
                                                              child: Row(

                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    child: Text(
                                                                      'Jaiq',
                                                                      style: TextStyle(fontSize: 11),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                      margin: EdgeInsets.only(left: 5),
                                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                                ],
                                                              )),
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                  onTap: () async {
                                                    const url = 'https://google.com';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'Could not launch $url';
                                                    }

                                                  }),
                                            ),

                                        ),
                              Container(



                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 20),
                                  child: SizedBox(
                                    height: width/2,
                                    width: 92,
                                    child: GestureDetector(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.3), //color of shadow
                                                    spreadRadius: 2, //spread radius
                                                    blurRadius: 12, // blur radius





                                                  )

                                                ]),



                                                child: Container(

                                                  width: 100,height: 100,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),


                                                    child: Image.network(

                                                      'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                                  ),
                                                ),
                                              ),
                                              SingleChildScrollView(
                                                scrollDirection: Axis.horizontal,
                                                child: Container(
                                                    margin: EdgeInsets.only(top: 7),
                                                    child: Text(
                                                      'Театрға барудың',
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 12),
                                                    )),
                                              ),
                                              Container(
                                                  margin: EdgeInsets.only(top: 2),
                                                  child: Text(
                                                    '3 себебі',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 12),
                                                  )),
                                              SingleChildScrollView(
                                                scrollDirection: Axis.vertical,
                                                child: Container(

                                                    margin: EdgeInsets.only(top: 1),
                                                    child: Row(

                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                            'Jaiq',
                                                            style: TextStyle(fontSize: 11),
                                                          ),
                                                        ),
                                                        Container(
                                                            margin: EdgeInsets.only(left: 5),
                                                            child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                      ],
                                                    )),
                                              ),

                                            ],
                                          ),
                                        ),
                                        onTap: () async {
                                          const url = 'https://google.com';
                                          if (await canLaunch(url)) {
                                            await launch(url);
                                          } else {
                                            throw 'Could not launch $url';
                                          }

                                        }),
                                  ),
                                ),
                              ),
                              Container(



                                child: SizedBox(
                                  height: width/2,
                                  width: 92,
                                  child: GestureDetector(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.3), //color of shadow
                                                  spreadRadius: 2, //spread radius
                                                  blurRadius: 12, // blur radius





                                                )

                                              ]),



                                              child: Container(

                                                width: 100,height: 100,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(10),


                                                  child: Image.network(

                                                    'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                                ),
                                              ),
                                            ),
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Container(
                                                  margin: EdgeInsets.only(top: 7),
                                                  child: Text(
                                                    'Театрға барудың',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 12),
                                                  )),
                                            ),
                                            Container(
                                                margin: EdgeInsets.only(top: 2),
                                                child: Text(
                                                  '3 себебі',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                )),
                                            SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Container(

                                                  margin: EdgeInsets.only(top: 1),
                                                  child: Row(

                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          'Jaiq',
                                                          style: TextStyle(fontSize: 11),
                                                        ),
                                                      ),
                                                      Container(
                                                          margin: EdgeInsets.only(left: 5),
                                                          child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                    ],
                                                  )),
                                            ),

                                          ],
                                        ),
                                      ),
                                      onTap: () async {
                                        const url = 'https://google.com';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }

                                      }),
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
                            ),
                          ),
                          Container(



                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: SizedBox(
                                height: 150,
                                width: 92,
                                child: GestureDetector(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.3), //color of shadow
                                                spreadRadius: 2, //spread radius
                                                blurRadius: 12, // blur radius





                                              )

                                            ]),



                                            child: Container(

                                              width: 100,height: 100,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),


                                                child: Image.network(

                                                  'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Text(
                                                  'Театрға барудың',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                )),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 2),
                                              child: Text(
                                                '3 себебі',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Container(

                                                margin: EdgeInsets.only(top: 1),
                                                child: Row(

                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Jaiq',
                                                        style: TextStyle(fontSize: 11),
                                                      ),
                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left: 5),
                                                        child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                  ],
                                                )),
                                          ),

                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }

                                    }),
                              ),
                            ),
                          ),
                          Container(



                            child: SizedBox(
                              height: 150,
                              width: 92,
                              child: GestureDetector(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
                            ),
                          ),
                          Container(



                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: SizedBox(
                                height: 150,
                                width: 92,
                                child: GestureDetector(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.3), //color of shadow
                                                spreadRadius: 2, //spread radius
                                                blurRadius: 12, // blur radius





                                              )

                                            ]),



                                            child: Container(

                                              width: 100,height: 100,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),


                                                child: Image.network(

                                                  'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Text(
                                                  'Театрға барудың',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                )),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 2),
                                              child: Text(
                                                '3 себебі',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Container(

                                                margin: EdgeInsets.only(top: 1),
                                                child: Row(

                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Jaiq',
                                                        style: TextStyle(fontSize: 11),
                                                      ),
                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left: 5),
                                                        child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                  ],
                                                )),
                                          ),

                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }

                                    }),
                              ),
                            ),
                          ),
                          Container(



                            child: SizedBox(
                              height: 150,
                              width: 92,
                              child: GestureDetector(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
                            ),
                          ),
                          Container(



                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: SizedBox(
                                height: 150,
                                width: 92,
                                child: GestureDetector(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.3), //color of shadow
                                                spreadRadius: 2, //spread radius
                                                blurRadius: 12, // blur radius





                                              )

                                            ]),



                                            child: Container(

                                              width: 100,height: 100,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),


                                                child: Image.network(

                                                  'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Text(
                                                  'Театрға барудың',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                )),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 2),
                                              child: Text(
                                                '3 себебі',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Container(

                                                margin: EdgeInsets.only(top: 1),
                                                child: Row(

                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Jaiq',
                                                        style: TextStyle(fontSize: 11),
                                                      ),
                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left: 5),
                                                        child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                  ],
                                                )),
                                          ),

                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }

                                    }),
                              ),
                            ),
                          ),
                          Container(



                            child: SizedBox(
                              height: 150,
                              width: 92,
                              child: GestureDetector(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
                            ),
                          ),
                          Container(



                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: SizedBox(
                                height: 150,
                                width: 92,
                                child: GestureDetector(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.3), //color of shadow
                                                spreadRadius: 2, //spread radius
                                                blurRadius: 12, // blur radius





                                              )

                                            ]),



                                            child: Container(

                                              width: 100,height: 100,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),


                                                child: Image.network(

                                                  'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Container(
                                                margin: EdgeInsets.only(top: 7),
                                                child: Text(
                                                  'Театрға барудың',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12),
                                                )),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 2),
                                              child: Text(
                                                '3 себебі',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Container(

                                                margin: EdgeInsets.only(top: 1),
                                                child: Row(

                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        'Jaiq',
                                                        style: TextStyle(fontSize: 11),
                                                      ),
                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left: 5),
                                                        child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                  ],
                                                )),
                                          ),

                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      const url = 'https://google.com';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }

                                    }),
                              ),
                            ),
                          ),
                          Container(



                            child: SizedBox(
                              height: 150,
                              width: 92,
                              child: GestureDetector(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.3), //color of shadow
                                              spreadRadius: 2, //spread radius
                                              blurRadius: 12, // blur radius





                                            )

                                          ]),



                                          child: Container(

                                            width: 100,height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),


                                              child: Image.network(

                                                'https://www.telegraph.co.uk/content/dam/Travel/2017/September/palace-theatre-london.jpg?imwidth=450', width: 120,  height: 120,fit: BoxFit.cover,),

                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 7),
                                              child: Text(
                                                'Театрға барудың',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              )),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              '3 себебі',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            )),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Container(

                                              margin: EdgeInsets.only(top: 1),
                                              child: Row(

                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      'Jaiq',
                                                      style: TextStyle(fontSize: 11),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(left: 5),
                                                      child: Image.network('https://is1-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4e/5d/d5/4e5dd5ad-880e-5426-4d93-a638b0cd8958/mza_10823212906875043949.jpg/1200x1200bb.jpg',fit: BoxFit.fill,height: 12,width: 12,)),

                                                ],
                                              )),
                                        ),

                                      ],
                                    ),
                                  ),
                                  onTap: () async {
                                    const url = 'https://google.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }

                                  }),
                            ),
                          ),

                        ],
                      ),
                    ),





































                  ],

                ),
              ),
            ],
          )
      ),
    );
  }

}
