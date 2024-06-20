import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/comp/getTextFormprofEtdiant.dart';

class listprisence extends StatefulWidget {
  const listprisence({super.key});

  @override
  State<listprisence> createState() => _listprisenceState();
}

class _listprisenceState extends State<listprisence> {
  TextEditingController Recherche = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list presence"),
        backgroundColor: HexColor("#04733B"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              getTextFormprofetd(
                controller: Recherche,
                hintName: 'Recherche par Id...',
                inputType: TextInputType.number,
              )
            ],
          ),
        ),
      ),
    );
  }
}
