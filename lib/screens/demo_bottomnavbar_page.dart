import 'package:flutter/material.dart';
import 'package:flutter_app_reciples/screens/demo_button_page.dart';
import 'package:flutter_app_reciples/screens/demo_edittext_page.dart';
import 'package:flutter_app_reciples/screens/demo_image_page.dart';
import 'dart:math';

import 'package:flutter_app_reciples/screens/demo_text_page.dart';


class DemoBottomNavigationBarPage extends StatefulWidget {
  @override
  _DemoBottomNavigationBarPageState createState() => _DemoBottomNavigationBarPageState();
}

class _DemoBottomNavigationBarPageState extends State<DemoBottomNavigationBarPage> {

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    DemoTextPage(title: "Demo Text"),
    DemoButtonPage(),
    DemoEditTextPage()
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
        title: Text("UI Demo - Buttons"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)
        ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
