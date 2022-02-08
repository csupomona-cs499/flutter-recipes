import 'package:flutter/material.dart';

class DemoEditTextPage extends StatefulWidget {
  @override
  _DemoEditTextPageState createState() => _DemoEditTextPageState();
}

class _DemoEditTextPageState extends State<DemoEditTextPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo UI - EditText"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(usernameController.text);
                  print(passwordController.text);
                },
                child: Text("Print Input")
            ),
            ElevatedButton(
                onPressed: () {
                  usernameController.text = "Here is an example of a change";
                },
                child: Text("Change Input")
            ),
          ],
        ),
      ),
    );
  }
}
