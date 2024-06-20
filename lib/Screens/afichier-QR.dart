import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class codeQR extends StatefulWidget {
  String? mod;
  codeQR(String m) {
    this.mod = m;
  }

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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [PrettyQrView.data(data: '${this.widget.mod}'!)],
        ),
      ),
    );
  }
}
