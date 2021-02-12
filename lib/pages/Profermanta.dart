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
      home: Pro(),
    );
  }
}
class Pro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);
    return Scaffold(
        appBar: AppBar(

          title: Text("Профориентация",style: TextStyle(color: Colors.black,fontSize: width/18),),

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
          ),
          //IconButton
          brightness: Brightness.dark,
        ),
        drawer: Drawer(
            child: NiyazDrawer()
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
              child: Container(

                width: width/55,
                height: width/3,
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.white,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Profonline.kz',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/15)),
                        ),
                        Image.network('https://image.jimcdn.com/app/cms/image/transf/dimension=321x1024:format=jpg/path/sd99b7a7213d94bcf/image/iffa1d2769d6c0cb9/version/1583683614/image.jpg', ),

                      ],
                    ),

                    textColor: Colors.black,

                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
              child: Container(

                width: width/55,
                height: width/3,
                child: RaisedButton(

                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    highlightElevation: 20.0,

                    hoverColor: Colors.white,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                      children: [




                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Nova Education',style: TextStyle(fontWeight: FontWeight.bold,fontSize: width/15)),
                        ),
                        Image.network('https://sun1-83.userapi.com/impf/c851124/v851124183/437e5/TA52b4AEM50.jpg?size=200x0&quality=90&crop=10,0,1167,1167&sign=f5b510ac25a4ac28d0165583fb958918&ava=1', width: 55, height: 55,),

                      ],
                    ),

                    textColor: Colors.black,

                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
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
            ),












          ],

        )
    );
  }

}
