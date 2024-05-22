import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/addministre.dart';
import 'package:projet_final_pfe/Screens/etdiant.dart';
import 'package:projet_final_pfe/Screens/login.dart';
import 'package:projet_final_pfe/Screens/prof.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'projet final',
      theme: ThemeData(
        primaryColor: HexColor("#04733B"),
        appBarTheme: AppBarTheme(
          backgroundColor: HexColor("#04733B"),
        ),
      ),
      home: pageprof(),
    );
  }
}
