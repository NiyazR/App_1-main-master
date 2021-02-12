import 'package:drawer_for_nias/pages/Hobby.dart';
import 'package:drawer_for_nias/pages/Move.dart';
import 'package:drawer_for_nias/pages/Profermanta.dart';
import 'package:drawer_for_nias/pages/Sport.dart';
import 'package:drawer_for_nias/pages/gibratty_angime.dart';
import 'package:drawer_for_nias/pages/marafon.dart';
import 'package:drawer_for_nias/pages/podcast.dart';
import 'package:drawer_for_nias/pages/quizz.dart';
import 'package:drawer_for_nias/pages/suraq.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'naviagte_user.logo.dart';

class NiyazDrawer extends StatefulWidget {
  @override
  _NiyazDrawerState createState() => _NiyazDrawerState();
}

class _NiyazDrawerState extends State<NiyazDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305,
      child: Container(
                color: Colors.white,
        child: ListView(

          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(decoration: BoxDecoration(color: Color.fromRGBO(1, 1, 1, 0)),



                  accountName: Text('Dostyk User', style: TextStyle(color: Colors.black),),
                  accountEmail: Text('user@gmail.com',style: TextStyle(color: Colors.black),),
                  currentAccountPicture: InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return Nav();
                      }));
                      },
                    child: CircleAvatar(
                      child: Image.network('https://avatanplus.com/files/resources/original/5bb23ac06077d16630357f8b.jpg',),

                    ),
                  ),

                ),
              ],
            ),
            ListTile(
              focusColor: Colors.red,
              leading: Icon(Icons.book_outlined, color: Colors.black, ),
              title: Text('Кітапхана', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return NiasApp();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.casino_outlined, color: Colors.black,),

              title: Text('Ғибратты әңгімер', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return SecondPage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.mic_rounded, color: Colors.black,),
              title: Text('Подкаст', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Podcast();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.accessibility_new_sharp, color: Colors.black,),
              title: Text('Марафон', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Marathon();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.waves_sharp, color: Colors.black ),
              title: Text('Quizz', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Quiz();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined, color: Colors.black ),
              title: Text('Профориентация', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Pro();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.now_widgets_outlined , color: Colors.black,),
              title: Text('Хобби', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Hobby();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.sports_tennis_outlined , color: Colors.black,),
              title: Text('Спорт', style: TextStyle(color: Colors.black),) ,

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Sport();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.movie_filter_outlined, color: Colors.black, ),
              title: Text('Кино', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Movie();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.announcement_outlined, color: Colors.black,),
              title: Text('Жаңа ұсыныстар', style: TextStyle(color: Colors.black),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return Mas();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
