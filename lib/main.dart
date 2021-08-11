import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const pi = 3.14;
    // bool isMale = false;
    // num temperature = 30;
    // var age = 23;

    return MaterialApp(
      home: HomePage(),
    );
  }
}
