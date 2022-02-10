import 'package:flutter/material.dart';
import 'dart:math';


class DemoDropdownPage extends StatefulWidget {
  @override
  _DemoDropdownPageState createState() => _DemoDropdownPageState();
}

class _DemoDropdownPageState extends State<DemoDropdownPage> {

  String dropdownValue = 'One';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Demo - Buttons"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
            print("Current value: " + dropdownValue);
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      )
    );
  }
}
