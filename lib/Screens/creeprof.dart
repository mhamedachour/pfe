import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/comp/genTextForm.dart';
import 'package:projet_final_pfe/comp/getTextFormprofEtdiant.dart';

class prof extends StatefulWidget {
  const prof({super.key});

  @override
  State<prof> createState() => _profState();
}

class _profState extends State<prof> {
  GlobalKey<FormState> forkey = new GlobalKey<FormState>();
  TextEditingController contNam = TextEditingController();
  TextEditingController contuserId = TextEditingController();
  TextEditingController contpassword = TextEditingController();
  TextEditingController contmodule = TextEditingController();
  CollectionReference prof = FirebaseFirestore.instance.collection('prof');
  Future<void> addprof() {
    return prof
        .add({
          "userId": contuserId.text,
          "password": contpassword.text,
          "nom": contNam.text,
          "module": contmodule.text
        })
        .then((value) => print("prof added"))
        .catchError((error) => print("Failed to add prof: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Créer prof"),
        backgroundColor: HexColor("#04733B"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                getTextFormprofetd(
                  controller: contuserId,
                  hintName: "donner Id prof",
                  obscureText: false,
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contNam,
                  hintName: "donner le nom de prof",
                  obscureText: false,
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contpassword,
                  hintName: "donner le passsword de prof",
                  obscureText: true,
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contmodule,
                  hintName: "donner le module de prof",
                  obscureText: false,
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        addprof();
                        setState(() {
                          contNam.text = "";
                          contmodule.text = "";
                          contpassword.text = "";
                          contuserId.text = "";
                        });
                      },
                      child: Text(
                        'Créer prof',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      )),
                  decoration: BoxDecoration(
                    color: HexColor("#04733B"),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
