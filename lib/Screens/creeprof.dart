import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class prof extends StatefulWidget {
  const prof({super.key});

  @override
  State<prof> createState() => _profState();
}

class _profState extends State<prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cree prof"),
        backgroundColor: HexColor("#04733B"),
      ),
    );
  }
}
