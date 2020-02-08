import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  String title;
  Page1(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}