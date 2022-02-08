import 'package:flutter/material.dart';

class DemoTextPage extends StatefulWidget {
  const DemoTextPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DemoTextPage> createState() => _DemoTextPageState();
}

class _DemoTextPageState extends State<DemoTextPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Demo Page for Text'),
            Text(
              "Change the Text Font Size",
              style: TextStyle(
                fontSize: 28
              ),
            ),
            Text(
              "Change the Text Font Color",
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow
              ),
            ),
            Text(
              "Change the Text Font Style/Weight",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Change the Text Font Type Family",
              style: TextStyle(
                  fontFamily: 'Rowdies'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
