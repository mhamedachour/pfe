import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/comp/getTextFormprofEtdiant.dart';

class etdiant extends StatefulWidget {
  const etdiant({super.key});

  @override
  State<etdiant> createState() => _etdiantState();
}

class _etdiantState extends State<etdiant> {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();
  TextEditingController contnumbregroup = TextEditingController();
  TextEditingController contannee = TextEditingController();
  TextEditingController contNam = TextEditingController();
  TextEditingController contuserId = TextEditingController();
  TextEditingController contpassword = TextEditingController();
  CollectionReference etdiant =
      FirebaseFirestore.instance.collection('etdiant');
  Future<void> addetdiant() {
    return etdiant
        .add({
          "userId": contuserId.text,
          "password": contpassword.text,
          "neveau": contannee.text,
          "nom": contNam.text,
          "groupe": contnumbregroup.text
        })
        .then((value) => print("etdiant added"))
        .catchError((error) => print("Failed to add etdiant: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cree etdiant"),
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
                  hintName: "donner le Id de etdiant",
                  obscureText: false,
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contNam,
                  hintName: "donner le nom de etdiant",
                  obscureText: false,
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contnumbregroup,
                  hintName: "donner le group de etdiant",
                  obscureText: false,
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contpassword,
                  hintName: "donner le password de etdiant",
                  obscureText: true,
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 20,
                ),
                getTextFormprofetd(
                  controller: contannee,
                  hintName: "donner le annee de etdiant(L1,L2,L3)",
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
                        addetdiant();
                        setState(() {
                          contNam.text = "";
                          contannee.text = "";
                          contnumbregroup.text = "";
                          contpassword.text = "";
                          contuserId.text = "";
                        });
                      },
                      child: Text(
                        'Cree etdiant',
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
