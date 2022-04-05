import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DemoFirebaseFirestorePage extends StatefulWidget {
  @override
  _DemoFirebaseFirestorePageState createState() => _DemoFirebaseFirestorePageState();
}

class _DemoFirebaseFirestorePageState extends State<DemoFirebaseFirestorePage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController majorController = TextEditingController();
  
  var studentList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo UI - Firebase Firestore"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            TextField(
              controller: majorController,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Major',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  FirebaseFirestore.instance.collection("students").add(
                      {
                        "name": nameController.text,
                        "major" : majorController.text
                      }
                  ).then((value) {
                    print("Successfully added the student.");
                  }).catchError((error) {
                    print("Failed to add the student.");
                    print(error);
                  });
                },
                child: Text("Add Student")
            ),
            ElevatedButton(
                onPressed: () {
                  studentList = [];
                  FirebaseFirestore.instance.collection("students").get()
                      .then((querySnapshot) {
                        print("Successfully load all the students");
                        // print(querySnapshot);
                        querySnapshot.docs.forEach((element) {
                          print(element.data()['name']);
                          print(element.data()['major']);
                          studentList.add(element.data()['name'] + " (" + element.data()['major'] + ") ");
                        });
                        setState(() {

                        });
                  }).catchError((error) {
                    print("Failed to load all the students.");
                    print(error);
                  });
                },
                child: Text("List Students")
            ),

            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: studentList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: Center(child: Text('${studentList[index]}')),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
