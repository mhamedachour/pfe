import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oktoast/oktoast.dart';
import 'package:projet_final_pfe/Screens/login.dart';
import 'package:projet_final_pfe/comp/comdb.dart';
import 'package:projet_final_pfe/comp/genLogin.dart';
import 'package:projet_final_pfe/comp/genTextForm.dart';
import 'package:toast/toast.dart';

class creerDepartement extends StatefulWidget {
  const creerDepartement({super.key});

  @override
  State<creerDepartement> createState() => _creerDepartementState();
}

class _creerDepartementState extends State<creerDepartement> {
  final _formkey = new GlobalKey<FormState>();

  CollectionReference admin = FirebaseFirestore.instance.collection('admin');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return admin
        .add({
          "userId": contUserId.text,
          "nomdepartement": contdepartementName.text,
          "email": contEmail.text,
          "password": contpassword.text,
          "cpassword": contCpassword.text,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  TextEditingController contUserId = TextEditingController();
  TextEditingController contdepartementName = TextEditingController();
  TextEditingController contEmail = TextEditingController();
  TextEditingController contpassword = TextEditingController();
  TextEditingController contCpassword = TextEditingController();

  // signUp() {
  //   final form = _formkey.currentState;
  //   String uid = contUserId.text;
  //   String udep = contdepartementName.text;
  //   String uEmail = contEmail.text;
  //   String uPassword = contpassword.text;
  //   String uCPassword = contCpassword.text;
  //   if (form!.validate()) {
  //     AlertDiaLog(context, "ok");
  //     print(uid);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  loginSignupHeader('Créer un Departement'),
                  getTextForm(
                    controller: contUserId,
                    hintName: 'User Id',
                    icon: Icons.person,
                    inputType: TextInputType.number,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: contdepartementName,
                    hintName: 'Nom de departement',
                    icon: Icons.school_outlined,
                    inputType: TextInputType.name,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: contEmail,
                    hintName: 'Email',
                    icon: Icons.email,
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: contpassword,
                    hintName: 'Password',
                    icon: Icons.lock,
                    obscureText: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: contCpassword,
                    hintName: "Confirm Password",
                    icon: Icons.lock,
                    obscureText: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 30, 30, 5),
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          addUser();
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800),
                        )),
                    decoration: BoxDecoration(
                      color: HexColor("#04733B"),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Avez-vous des comptes?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (_) => Login()),
                                (Route<dynamic> route) => false);
                          },
                          child: Text('Login',
                              style: TextStyle(
                                color: HexColor("#04733B"),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
