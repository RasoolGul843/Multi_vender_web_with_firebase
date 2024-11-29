import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  static const String routeName = "\DashboardScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Text(
            "DashBorad Screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
