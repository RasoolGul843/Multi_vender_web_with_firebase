import 'package:flutter/material.dart';

class Productscreen extends StatelessWidget {
  static const String routeName = "\Productscreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Text(
            "prodeuct Screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
