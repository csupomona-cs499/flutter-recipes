import 'package:flutter/material.dart';
import 'dart:math';


class DemoButtonPage extends StatefulWidget {
  @override
  _DemoButtonPageState createState() => _DemoButtonPageState();
}

class _DemoButtonPageState extends State<DemoButtonPage> {

  void printLuckyNumber() {
    var rng = Random();
    print(rng.nextInt(100));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Demo - Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Button Example 1"),
              onPressed: () {
                print("The button 1 is clicked.");
              },
            ),
            TextButton(
                onPressed: () {
                  print("The button 2 is clicked.");
                },
                child: Text("Button Exmaple 2")
            ),
            TextButton(
                onPressed: printLuckyNumber,
                child: Text("Button Exmaple 3 - Call Function")
            )
          ],
        ),
      )
    );
  }
}
