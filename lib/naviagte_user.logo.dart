
import 'package:drawer_for_nias/user_page/book.dart';
import 'package:drawer_for_nias/user_page/home.dart';
import 'package:drawer_for_nias/user_page/marathon.dart';
import 'package:drawer_for_nias/user_page/question.dart';
import 'package:drawer_for_nias/user_page/sport.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[

    HomeCalendarPage(),
    book_user(),
    Home_user(),
    sport_user(),
    Suraq_user(),

  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event_available_outlined,
            ),
            title: Text(
              'Марафон',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_outlined ,
            ),
            title: Text(
              'Кітап оқу',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,size: 25,
            ),
            title: Text(
              'Басты мәзір',
            ),
          ),
          BottomNavigationBarItem(

            icon: Icon(
              Icons.directions_run_rounded ,

            ),
            title: Text(
              'Спорт',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_outlined,
            ),
            title: Text(
              'Quiz',
            ),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
