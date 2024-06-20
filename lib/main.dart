import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/addministre.dart';
import 'package:projet_final_pfe/Screens/creeetdiant.dart';
import 'package:projet_final_pfe/Screens/creeprof.dart';
import 'package:projet_final_pfe/Screens/etdiant.dart';
import 'package:projet_final_pfe/Screens/login.dart';
import 'package:projet_final_pfe/Screens/prof.dart';
import 'package:projet_final_pfe/Screens/scan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyBtDA0PcR7aQFO10PJrqdxhD3UkVDamIQg",
              appId: "1:519786665794:android:cdb1a47a136861c1eadadb",
              messagingSenderId: "519786665794",
              projectId: "projet-final-3163c"),
        )
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      home: Login(),
    );
  }
}
