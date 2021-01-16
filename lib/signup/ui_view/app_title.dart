import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'P',
          style: TextStyle(color: Colors.black, fontSize: 30),
          children: [
            TextSpan(
              text: 'Sure',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ]),
    );
  }
}