import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class etdiant extends StatefulWidget {
  const etdiant({super.key});

  @override
  State<etdiant> createState() => _etdiantState();
}

class _etdiantState extends State<etdiant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cree etdiant"),
        backgroundColor: HexColor("#04733B"),
      ),
    );
  }
}
