import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/afichier-QR.dart';
import 'package:projet_final_pfe/Screens/creeetdiant.dart';
import 'package:projet_final_pfe/Screens/creeprof.dart';

class pageprof extends StatefulWidget {
  const pageprof({super.key});

  @override
  State<pageprof> createState() => _pageprofState();
}

class _pageprofState extends State<pageprof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('prof'),
        backgroundColor: HexColor("#04733B"),
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
                    context, MaterialPageRoute(builder: (context) => codeQR()));
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
                      Icons.school_outlined,
                      size: 100,
                      color: HexColor("#04733B"),
                    ),
                    Text(
                      'afficher QR',
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
                      Icons.school_outlined,
                      size: 100,
                      color: HexColor("#04733B"),
                    ),
                    Text(
                      'create etudient',
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
