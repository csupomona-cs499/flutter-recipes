import 'package:flutter/material.dart';
import 'package:flutter_app_reciples/sampe_app/splash_screen.dart';
import 'package:flutter_app_reciples/screens/demo_bottomnavbar_page.dart';
import 'package:flutter_app_reciples/screens/demo_button_page.dart';
import 'package:flutter_app_reciples/screens/demo_column_page.dart';
import 'package:flutter_app_reciples/screens/demo_container_page.dart';
import 'package:flutter_app_reciples/screens/demo_dropdownbutton_page.dart';
import 'package:flutter_app_reciples/screens/demo_edittext_page.dart';
import 'package:flutter_app_reciples/screens/demo_image_page.dart';
import 'package:flutter_app_reciples/screens/demo_listview_page.dart';
import 'package:flutter_app_reciples/screens/demo_row_page.dart';
import 'package:flutter_app_reciples/screens/demo_text_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            const Text(
              'You have pushed the button this many times:',
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DemoTextPage(title: "UI Demo - Text")),
                  );
                },
                child: Text("UI Demo - Text")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoButtonPage()),
                );
              },
              child: Text("UI Demo - Button"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoEditTextPage()),
                );
              },
              child: Text("UI Demo - TextField"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoContainerPage()),
                );
              },
              child: Text("UI Demo - Container"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoColumnPage()),
                );
              },
              child: Text("UI Demo - Column"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoRowPage()),
                );
              },
              child: Text("UI Demo - Row"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoImagePage()),
                );
              },
              child: Text("UI Demo - Image"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoListViewPage()),
                );
              },
              child: Text("UI Demo - ListView"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoBottomNavigationBarPage()),
                );
              },
              child: Text("UI Demo - BottomNavigationBar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DemoDropdownPage()),
                );
              },
              child: Text("UI Demo - Dropdown Button"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              },
              child: Text("App Demo"),
            ),
          ],
        ),
      ),
    );
  }
}
