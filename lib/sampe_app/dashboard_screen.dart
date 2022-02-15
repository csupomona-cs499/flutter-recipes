import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Dashboard Screen"),
            Expanded(
                flex: 25,
                child: Text("Profile Section")
            ),
            Expanded(
                flex: 50,
                child: Text("Graphs Section")
            ),
            Expanded(
                flex: 25,
                child: Text("Recommendation Section")
            ),
          ],
        )
      ),
    );
  }
}
