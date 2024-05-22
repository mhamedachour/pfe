import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class scan extends StatefulWidget {
  const scan({super.key});

  @override
  State<scan> createState() => _scanState();
}

class _scanState extends State<scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scan"),
        backgroundColor: HexColor("#04733B"),
      ),
    );
  }
}
