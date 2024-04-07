import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class loginSignupHeader extends StatelessWidget {
  String hederName;
  loginSignupHeader(this.hederName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 140,
          ),
          Text(
            hederName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: HexColor("#04733B"),
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Icon(
            Icons.school,
            size: 80,
            color: Colors.grey[850],
          ),
          Text(
            'presence',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
