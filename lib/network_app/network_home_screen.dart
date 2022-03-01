import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_reciples/sampe_app/login_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHomeScreen extends StatefulWidget {
  @override
  _NetworkHomeScreenState createState() => _NetworkHomeScreenState();
}

class _NetworkHomeScreenState extends State<NetworkHomeScreen> {

  TextEditingController budgetController = TextEditingController();
  var entries = [];

  void loadItems() async {
      // make a http call to
      // https://simplefrigidmonotone.sunyu912.repl.co/search/40
      var url = Uri.parse('https://simplefrigidmonotone.sunyu912.repl.co/search/' + budgetController.text);
      var response = await http.get(url);
      entries = json.decode(response.body);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      print(entries);

      setState(() {

      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 20,
                child: Image.network("https://s.tmimgcdn.com/scr/1200x627/192700/food-search-app-logo-template-in-gradient_192789-original.jpg")
            ),
            Expanded(
                flex: 20,
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 75,
                        child: TextField(
                          controller: budgetController,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Budget',
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        flex: 25,
                        child: ElevatedButton(
                          child: Text("Search"),
                          onPressed: loadItems,
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Expanded(
                flex: 60,
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
                          color: Colors.amber[300],
                          child: Center(child: Text('Entry ${entries[index]}')),
                        ),
                      );
                    }
                ),
            ),
          ],
        )
      ),
    );
  }
}
