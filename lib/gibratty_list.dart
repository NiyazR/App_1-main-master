import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';


class Gibrttylist extends StatefulWidget {
  @override
  _GibrttylistState createState() => _GibrttylistState();
}

class _GibrttylistState extends State<Gibrttylist> {
  createAlertDialog(BuildContext context) {

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context)
    {
      return AlertDialog(
        backgroundColor: Colors.red,


        title: Container(

          decoration: BoxDecoration(


              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(10) ,
                topRight: Radius.circular(10),
                bottomLeft:Radius.circular(10) ,
                bottomRight: Radius.circular(10),
              ),

              image: DecorationImage(

                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1.0), BlendMode.dstATop),

                fit: BoxFit.cover,
                image: NetworkImage('https://i.pinimg.com/originals/41/67/d6/4167d6fa168d0241079f934df62cd8ad.png'),)),


          width: 150,
          height: 300,

          child: Column(
            children: [

              Container(

                  margin: EdgeInsets.only(top: 10),
                  child: Text('Түлкі мен ешкі',style: TextStyle(color: Colors.white),)),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Түлкі мен ешкі  Бір түлкі жүгіріп келе жатып, абайсызда бір терең апанға түсіп кетіпті. Шыға алмай тұрғанда, бір ешкі су іздеп жүріп, әлгі апанға кез болып, түлкіні көреді. — Ей, түлкі батыр, не қылып тұрсың? — депті. — Ой, не қыласың, жаным жай тауып тұр. Қырда әрі сусап, әрі ыстықтап өліп едім. Апанның іші әрі салқын, әрі түбінде тұп тұнық суы бар екен, — депті түлкі. Мұны естіп ешкі: «Мен де салқындайын, әрі су ішейін», — деп ойлап, секіріп апанға түсіпті. Сонда түлкі секіріп ешкінің үстіне мініп, онан мүйізіне табан тірепті де, ырғып далаға шығып, жөніне кетіпті. «Өтірікке алданба, басың бәлеге душар болар» деген сөз осыдан қалыпты.',style: TextStyle(fontSize: 12,color: Colors.white),),
                  )),
            ],


          ),



        ),










      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(



        child: ListView(
          children: [


            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),


              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              elevation: 10.0,
              child: SizedBox(
                height: 80.0,
                child: InkWell(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 31,top: 15),
                              child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8yzT0PB1PV9y1VEwUCsfYWfsdqV8a81RXmA&usqp=CAU', height: 50,width: 50,))
                          ),
                        ],
                      ),

                      Column(
                        children: [


                          Row(
                            children: [
                              Container(
                                  child:
                                  Container(

                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 20),
                                        child: Text('Алтын шеттеуік',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                      )
                                  )
                              ),
                            ],


                          ),

                          Row(
                            children: [



                              Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,right: 5),
                                    child: Icon(Icons.star, color: Colors.red,size: 20,),
                                  ),

                                ],
                              ),
                              Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 7,right: 55),
                                    child: Text('4.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                  )

                                ],
                              ),

                            ],
                          ),




                        ],
                      ),
                      Row(
                        children: [


                          Padding(
                            padding:EdgeInsets.only(left: 40,top: 5),
                            child: IconButton(

                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black,size: 30,),
                                tooltip: 'оқу',
                                onPressed: () {
                                  createAlertDialog(context);
                                }
                            ), //Ic
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


              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              elevation: 10.0,
              child: SizedBox(




                height: 80.0,
                child: InkWell(




                  child: Row(
                    children: [



                      Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 31,top: 15),
                              child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8yzT0PB1PV9y1VEwUCsfYWfsdqV8a81RXmA&usqp=CAU', height: 50,width: 50,))
                          ),
                        ],
                      ),




                      Column(
                        children: [




                          Row(
                            children: [
                              Container(
                                  child:
                                  Container(

                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20,left: 20),
                                        child: Text('Алтын шеттеуік',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                      )
                                  )
                              ),
                            ],


                          ),

                          Row(
                            children: [



                              Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,right: 5),
                                    child: Icon(Icons.star, color: Colors.red,size: 20,),
                                  ),

                                ],
                              ),
                              Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(top: 7,right: 55),
                                    child: Text('4.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                  )

                                ],
                              ),

                            ],
                          ),




                        ],
                      ),



                      Row(
                        children: [


                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 5),
                            child: IconButton(

                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black,size: 30,),
                                tooltip: 'search',
                                onPressed: ()async {
                                  const url = 'https://google.com';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  };
                                }
                            ), //Ic
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
