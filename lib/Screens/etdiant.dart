import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/creeetdiant.dart';
import 'package:projet_final_pfe/Screens/creeprof.dart';
import 'package:projet_final_pfe/Screens/scan.dart';

class pageetdaint extends StatefulWidget {
  const pageetdaint({super.key});

  @override
  State<pageetdaint> createState() => _pageetdaintState();
}

class _pageetdaintState extends State<pageetdaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('etdiant'),
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
                    context, MaterialPageRoute(builder: (context) => scan()));
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
                      'scan QR',
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
