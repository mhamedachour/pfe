import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class codeQR extends StatefulWidget {
  const codeQR({super.key});

  @override
  State<codeQR> createState() => _codeQRState();
}

class _codeQRState extends State<codeQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("code QR"),
        backgroundColor: HexColor("#04733B"),
      ),
    );
  }
}
