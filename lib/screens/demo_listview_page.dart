import 'package:flutter/material.dart';
import 'dart:math';


class DemoListViewPage extends StatefulWidget {
  @override
  _DemoListViewPageState createState() => _DemoListViewPageState();
}

class _DemoListViewPageState extends State<DemoListViewPage> {

  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
  final List<int> colorCodes = <int>[600, 500, 100, 200, 300, 400];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Demo - Buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        print(index);
                        print(entries[index]);
                      },
                      title: Container(
                        height: 50,
                        color: Colors.amber[colorCodes[index]],
                        child: Center(child: Text('Entry ${entries[index]}')),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      )
    );
  }
}
