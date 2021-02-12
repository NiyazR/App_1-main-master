import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class SecondRoute extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double text=MediaQuery.textScaleFactorOf(context);
    print(width);
    const cutOffYValue = 0.0;
    const yearTextStyle =
    TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),  onPressed: () => Navigator.of(context).pop(null),
            ),

            title: Text('Рейтинг',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            actions: <Widget>[

            ],
            backgroundColor: Colors.white,
          ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: width/1.5,
            width: width/1,
            child: Material(

                color: Colors.white,
                elevation: 10.0,
                borderRadius: BorderRadius.circular(24.0),
                shadowColor: Colors.red,

                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(


                      child: SizedBox(
                        width: width/1,
                        height: width/1.5,
                        child: LineChart(
                          LineChartData(
                            lineTouchData: LineTouchData(enabled: false),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 0),
                                  FlSpot(1, 1),
                                  FlSpot(2, 3),
                                  FlSpot(3, 3),
                                  FlSpot(4, 5),
                                  FlSpot(4, 4)

                                ],
                                isCurved: false,
                                barWidth: 1,

                                colors: [
                                  Colors.black,
                                ],
                                belowBarData: BarAreaData(
                                  show: true,
                                  colors: [Colors.red.withOpacity(0.8)],
                                  cutOffY: cutOffYValue,

                                  applyCutOffY: true,
                                ),
                                aboveBarData: BarAreaData(
                                  show: true,
                                  colors: [Colors.red.withOpacity(0.6)],
                                  cutOffY: cutOffYValue,
                                  applyCutOffY: true,
                                ),
                                dotData: FlDotData(
                                  show: false,
                                ),
                              ),],
                            minY: 0,

                            titlesData: FlTitlesData(

                              bottomTitles: SideTitles(

                                  showTitles: true,
                                  reservedSize: 7,
                                  textStyle: yearTextStyle,
                                  getTitles: (value) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return '17.01';
                                      case 1:
                                        return '17.02';
                                      case 2:
                                        return '17.03';
                                      case 3:
                                        return '17.04';
                                      case 4:
                                        return '17.05';
                                      case 5:
                                        return '17.03';
                                      case 6:
                                        return '1fsd04';
                                      case 7:
                                        return '175';



                                      default:
                                        return '';
                                    }
                                  }),
                              leftTitles: SideTitles(
                                showTitles: true,
                                  getTitles: (value) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return '10%';
                                      case 1:
                                        return '20%';
                                      case 2:
                                        return '30%';
                                      case 3:
                                        return '40%';
                                      case 4:
                                        return '50%';
                                      case 5:
                                        return '60%';
                                      case 6:
                                        return '70%';
                                      case 7:
                                        return '10%';



                                      default:
                                        return '';
                                    }
                                  }
                              ),
                            ),
                            axisTitleData: FlAxisTitleData(topTitle: AxisTitle(showTitle: true, titleText: 'Жүру', margin: 10, textStyle: yearTextStyle, textAlign: TextAlign.left),
                                bottomTitle: AxisTitle(
                                    showTitle: true,
                                    margin: 10,
                                    reservedSize: 2,
                                    titleText: 'Күндер',
                                    textStyle: yearTextStyle,
                                    textAlign: TextAlign.right)),
                            gridData:

                            FlGridData(

                              show: false,
                              checkToShowHorizontalLine: (double value) {
                                return value == 1 || value == 2 || value == 3 || value == 4;
                              },
                            ),
                          ),
                        ),
                      ),

                  ),
                ),
              ),
          ),
        )

      ),
    );

  }
}

class Suraq_user extends StatefulWidget {
  @override
  _Suraq_userState createState() => _Suraq_userState();
}

class _Suraq_userState extends State<Suraq_user> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text("Quiz нәтижелері",style: TextStyle(color: Colors.black),)),

          actions: <Widget>[
            IconButton(

              icon: Icon(Icons.trending_up_rounded, color: Colors.black,),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );

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
                    height: 100.0,
                    child: InkWell(
                      child: Row(

                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 15),
                                  child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.network('https://daryn.online/media/2020/10/13/qazaqstan-tarikhy-ubt.png', height: 70,width: 70,))
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Container(
                                   margin: EdgeInsets.only(bottom:10),
                                   child: Text('Қазақстан тарихы',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined, color: Colors.black,size: 21,),
                                    Container(margin:EdgeInsets.only(left: 5),child: Text('19.01',style: TextStyle(fontSize: 12),)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.check_circle_outline , color: Colors.black,size: 21,),
                                    Container(margin:EdgeInsets.only(left: 5),child: Text('100/80',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
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
                    height: 100.0,
                    child: InkWell(
                      child: Row(

                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 15),
                                  child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.network('https://daryn.online/media/2020/10/13/qazaqstan-tarikhy-ubt.png', height: 70,width: 70,))
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom:10),
                                    child: Text('Қазақстан тарихы',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined, color: Colors.black,size: 21,),
                                    Container(margin:EdgeInsets.only(left: 5),child: Text('19.01',style: TextStyle(fontSize: 12),)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.check_circle_outline , color: Colors.black,size: 21,),
                                    Container(margin:EdgeInsets.only(left: 5),child: Text('100/80',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
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
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40,right: 40),
                      child: IconButton(

                        icon: Icon(Icons.add_circle, color: Colors.red[700],size: 60,),
                        tooltip: 'search',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),


          ],
        ),

      ),
    );
  }
}



