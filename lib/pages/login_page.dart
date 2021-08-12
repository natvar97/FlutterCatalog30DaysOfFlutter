import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 16,
          ),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
