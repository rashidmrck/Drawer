import 'package:flutter/material.dart';
import 'package:flutter_drawer/home.dart';
import 'package:flutter_drawer/page1.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Home(),
      routes: {
        '/page1': (context) => Page1('Rashid'),
        '/page2': (context) => Page1('Mr CK')
      },
    );
  }
}
