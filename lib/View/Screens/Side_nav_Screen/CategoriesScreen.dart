import 'package:flutter/material.dart';

class Categoriesscreen extends StatelessWidget {
  static const String routeName = "\Categoriesscreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Text(
            "cATEGORTIES Screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
