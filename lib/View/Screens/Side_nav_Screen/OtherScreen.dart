import 'package:flutter/material.dart';

class Otherscreen extends StatelessWidget {
  static const String routeName = "\Otherscreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Text(
            "OTHER Screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
