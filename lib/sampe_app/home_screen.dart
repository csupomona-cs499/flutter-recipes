import 'package:flutter/material.dart';
import 'package:flutter_app_reciples/sampe_app/account_screen.dart';
import 'package:flutter_app_reciples/sampe_app/dashboard_screen.dart';
import 'package:flutter_app_reciples/sampe_app/log_screen.dart';
import 'package:flutter_app_reciples/screens/demo_button_page.dart';
import 'package:flutter_app_reciples/screens/demo_edittext_page.dart';
import 'package:flutter_app_reciples/screens/demo_image_page.dart';
import 'dart:math';

import 'package:flutter_app_reciples/screens/demo_text_page.dart';


class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    LogScreen(),
    AccountScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Home"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)
        ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashbaord',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt_sharp),
            label: 'Log',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Accont',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
