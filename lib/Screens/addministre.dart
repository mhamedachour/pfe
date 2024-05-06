import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('admin'),
        backgroundColor: HexColor("#04733B"),
      ),
      backgroundColor: HexColor("#eeeeee"),
      body: Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .9,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                children: [
                  Spacer(),
                  Icon(
                    Icons.school_outlined,
                    size: 100,
                    color: HexColor("#04733B"),
                  ),
                  Text(
                    'create prof',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
