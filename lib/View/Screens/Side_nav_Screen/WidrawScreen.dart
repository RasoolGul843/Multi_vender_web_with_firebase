import 'package:flutter/material.dart';

class Widrawscreen extends StatelessWidget {
  static const String routeName = "\Widrawscreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Text(
            "widtdraw Screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
