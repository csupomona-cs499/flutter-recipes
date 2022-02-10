import 'package:flutter/material.dart';
import 'dart:math';


class DemoRowPage extends StatefulWidget {
  @override
  _DemoRowPageState createState() => _DemoRowPageState();
}

class _DemoRowPageState extends State<DemoRowPage> {

  void printLuckyNumber() {
    var rng = Random();
    print(rng.nextInt(100));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Demo - Row"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 25,
              child: ElevatedButton(
                child: Text("Button Example 1"),
                onPressed: () {
                  print("The button 1 is clicked.");
                },
              ),
            ),
            Expanded(
              flex: 25,
              child: ElevatedButton(
                  onPressed: () {
                    print("The button 2 is clicked.");
                  },
                  child: Text("Button Exmaple 2")
              ),
            ),
            Expanded(
              flex: 50,
              child: ElevatedButton(
                  onPressed: printLuckyNumber,
                  child: Text("Button Exmaple 3 - Call Function")
              ),
            )
          ],
        ),
      )
    );
  }
}
