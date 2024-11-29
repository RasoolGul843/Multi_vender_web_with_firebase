import 'dart:ffi';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Uploadbannerscreen extends StatefulWidget {
  static const String routeName = "\Uploadbannerscreen";

  @override
  State<Uploadbannerscreen> createState() => _UploadbannerscreenState();
}

class _UploadbannerscreenState extends State<Uploadbannerscreen> {
  final Firebasestorage _storage = Firebasestorage.instance;
  dynamic _image;
  String? FileName;
  ///////........... function to pick image.......////////

  pickImage() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);
    if (result != null) {
      setState(() {
        _image = result.files.first.bytes;
        FileName = result.files.first.name;
      });
    }
  }

  ///////...........upload image to firebase.....//////
  uploadImage(dynamic image) async {
    Reference ref = _storage.ref().child("Banners").child(FileName);
    UploadTask uploadTask = ref.putData(image);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Banners",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.grey.shade900),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _image != null
                            ? Image.memory(
                                _image,
                                fit: BoxFit.cover,
                              )
                            : Center(
                                child: Text("Banner"),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ///////////////////..........upload image....//////////

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow.shade900),
                        onPressed: () {
                          pickImage();
                        },
                        child: Text(
                          "Upload Image",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                ///////////////////..........save....//////////
                SizedBox(width: 5),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade900),
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
