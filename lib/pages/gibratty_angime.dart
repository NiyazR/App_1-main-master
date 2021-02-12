import 'package:flutter/cupertino.dart';
import '../drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

class SecondPage extends StatelessWidget {

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
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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





          )




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
          title: SingleChildScrollView(

              scrollDirection: Axis.horizontal,
              child: Text("Ғибратты әңгімелер",style: TextStyle(color: Colors.black,fontSize: width/18),)),

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
        ),
        drawer:  NiyazDrawer(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),

                elevation: 10.0,
                child: SizedBox(
                  height: width/4,
                  width: width/55,

                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [




                            ClipRRect(

                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8yzT0PB1PV9y1VEwUCsfYWfsdqV8a81RXmA&usqp=CAU', height:width/8,width: width/8,)),



                          ],
                        ),
                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Row(

                                children: [


                                  Container(

                                    margin: EdgeInsets.only(bottom: 3),

                                    child: Text('Алтын шеттеуік',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/20)),

                                  )

                                ],


                              ),
                              Row(

                                children: [



                                  Column(
                                    children: [
                                      Icon(Icons.star, color: Colors.red,size: width/15,),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('4.9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/20)),

                                    ],
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios, color: Colors.black,size: width/11,),
                                  tooltip: 'оқу',
                                  onPressed: () {
                                    createAlertDialog(context);}
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),



























          ],

        )
    );






  }

}














