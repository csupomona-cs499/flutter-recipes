import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';

class DemoFirebaseStoragePage extends StatefulWidget {
  @override
  _DemoFirebaseStoragePageState createState() => _DemoFirebaseStoragePageState();
}

class _DemoFirebaseStoragePageState extends State<DemoFirebaseStoragePage> {

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      print(imageFile);
      uploadFileToFBStorage(imageFile);
    } else {
      print("pickedFile is null");
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      print(imageFile);
      uploadFileToFBStorage(imageFile);
    } else {
      print("pickedFile is null");
    }
  }

  void uploadFileToFBStorage(File file) {
    var fileName = DateTime.now().millisecondsSinceEpoch.toString() + ".jpg";
    FirebaseStorage.instance.ref().child("cs4750/" + fileName).putFile(file)
      .then((res) {
        print("Succesfully upload the photo");
        res.ref.getDownloadURL().then((value) {
          print(value);
        }).catchError((error) {
          print("Failed to get the download URL");
        });
    }).catchError((error) {
      print("Failed to upload the photo");
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo UI - Firebase Auth"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _getFromGallery();
                },
                child: Text("Pick an Image")
            ),
            ElevatedButton(
                onPressed: () {
                  _getFromCamera();
                },
                child: Text("Take a Photo")
            ),
          ],
        ),
      ),
    );
  }
}
