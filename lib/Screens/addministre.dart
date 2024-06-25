import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/creeetdiant.dart';
import 'package:projet_final_pfe/Screens/creeprof.dart';
import 'package:projet_final_pfe/Screens/login.dart';

class admin extends StatefulWidget {
  String? Nam;
  admin(String e) {
    this.Nam = e;
  }
  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${this.widget.Nam}"),
        backgroundColor: HexColor("#04733B"),
        actions: [
          IconButton(
              onPressed: () async {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      backgroundColor: HexColor("#eeeeee"),
      body: Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .9,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => prof()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(10, 40, 15, 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                          spreadRadius: 1),
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-3, -3),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ]),
                child: Column(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.person_add_sharp,
                      size: 100,
                      color: HexColor("#04733B"),
                    ),
                    Text(
                      'Créer prof',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => etdiant()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(15, 40, 10, 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                          spreadRadius: 1),
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-3, -3),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ]),
                child: Column(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.person_add_sharp,
                      size: 100,
                      color: HexColor("#04733B"),
                    ),
                    Text(
                      'Créer etudiant',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
