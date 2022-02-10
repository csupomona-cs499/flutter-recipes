import 'package:flutter/material.dart';
import 'dart:math';


class DemoContainerPage extends StatefulWidget {
  @override
  _DemoContainerPageState createState() => _DemoContainerPageState();
}

class _DemoContainerPageState extends State<DemoContainerPage> {

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
            Container(
              height: 150,
              width: 300,
              child: ElevatedButton(
                child: Text("Container Example Size for Height/Width"),
                onPressed: () {
                  print("The button 1 is clicked.");
                },
              ),
            ),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    print("The button 2 is clicked.");
                  },
                  child: Text("Container Exmaple 2 - Width Match Parent")
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 40),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: printLuckyNumber,
                  child: Text("Container Exmaple 3 - Margin Control")
              ),
            )
          ],
        ),
      )
    );
  }
}
