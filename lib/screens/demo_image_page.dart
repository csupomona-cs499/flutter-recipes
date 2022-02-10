import 'package:flutter/material.dart';
import 'dart:math';


class DemoImagePage extends StatefulWidget {
  @override
  _DemoImagePageState createState() => _DemoImagePageState();
}

class _DemoImagePageState extends State<DemoImagePage> {

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

            Image.asset('assets/images/cpp_logo.jpeg'),

            Container(
                height: 150,
                width: 100,
                child: Image.network(
                  'https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/broncoathletics.com/images/2014/9/24/LogoRelease1a.jpg',
                  fit: BoxFit.contain,
                )
            ),
            Container(
                height: 150,
                width: 100,
                child: Image.network(
                    'https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/broncoathletics.com/images/2014/9/24/LogoRelease1a.jpg',
                  fit: BoxFit.fill,
                )
            ),
            Container(
                height: 150,
                width: 100,
                child: Image.network(
                  'https://dbukjj6eu5tsf.cloudfront.net/sidearm.sites/broncoathletics.com/images/2014/9/24/LogoRelease1a.jpg',
                  fit: BoxFit.cover,
                )
            )
          ],
        ),
      )
    );
  }
}
