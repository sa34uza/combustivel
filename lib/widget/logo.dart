import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 180,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "COMBUSTÍVEL",
          style: TextStyle(
            color: Colors.black,
            fontSize: 35,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
