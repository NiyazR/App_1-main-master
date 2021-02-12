import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';







class Kitap_about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Stack(
          children: <Widget>[
            SizedBox(
              height: 210,
              child: Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg"),
                        fit: BoxFit.cover)
                ),
              ),
            ),
            Column(
              children: [
                Container(

                    margin: EdgeInsets.only(right:280,top: 30),
                    child: Transform.rotate(
                      angle: 0 * pi/180,
                      child: IconButton(


                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 45),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40,top: 65),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 12, // blur radius





                        )

                      ]),



                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),


                        child: Image.network(
                          'https://simg2.marwin.kz/media/catalog/product/cache/08ac36f8e739f37f4a6e83b514532086/f/u/fullimage_19_247.jpg',
                          width: 120,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 95),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Тастамашы,Ана!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text('Айгиз Баймұхаметов',style: TextStyle(fontSize: 14),)),

                            Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 5),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.red,size: 16,),
                                      Icon(Icons.star, color: Colors.red,size: 16,),
                                      Icon(Icons.star, color: Colors.red,size: 16,),
                                      Icon(Icons.star, color: Colors.red,size: 16,),
                                      Icon(Icons.star_half, color: Colors.red,size: 16,),
                                      Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text('4.8',style: TextStyle(fontSize: 14),)),
                                    ],
                                  ),
                                ),

                              ],
                            ),



                          ],
                        )
                    ),

                  ],
                ),
                Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text('Бұл кітапта башқұрт жазушысы Айгиз Баймұхаметов ата-анасынан айырылған жетім балалардың аянышты тағдырын баяндайды. Балалар үйіндегі ұл-қыздардың өмірі қарапайым, оқырманға түсінікті тілде суреттеледі. Жазушы бас кейіпкер Ілиястың жан дүниесін ашу арқылы бүгінгі қоғамның бет-бейнесін көрсеткісі келген. Кітап балалар мен жасөспірімдерге, барша оқырман қауымға арналған.',style: TextStyle(fontSize: 13),),
                    )



                ),
                SizedBox(
                  height: 40,
                  width:  150,
                  child: RaisedButton(


                      color: Colors.red,


                      hoverColor: Colors.red,


                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      child: const Text('Жүктеу',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),



                      onPressed: ()async {
                        const url = 'https://google.com';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        };
                      }


                  ),
                ),
              ],
            ),

          ],
        ),





      ),
    );
  }
}