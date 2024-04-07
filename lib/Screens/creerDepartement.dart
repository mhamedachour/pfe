import 'package:flutter/material.dart';
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

  final _contUserId = TextEditingController();
  final _contdepartementName = TextEditingController();
  final _contEmail = TextEditingController();
  final _contpassword = TextEditingController();
  final _contCpassword = TextEditingController();

  signUp() {
    final form = _formkey.currentState;
    String uid = _contUserId.text;
    String udep = _contdepartementName.text;
    String uEmail = _contEmail.text;
    String uPassword = _contpassword.text;
    String uCPassword = _contCpassword.text;
    if (form!.validate()) {
      AlertDiaLog(context, "ok");
      print(uid);
    }
    // if (uid.isEmpty) {
    //   AlertDiaLog(context, "Please Enter user ID");
    // } else if (udep.isEmpty) {
    //   AlertDiaLog(context, "Please Enter Name Departement");
    // } else if (uEmail.isEmpty) {
    //   AlertDiaLog(context, "Please Enter Email");
    // } else if (uPassword.isEmpty) {
    //   AlertDiaLog(context, "Please Enter password");
    // } else if (uCPassword.isEmpty) {
    //   AlertDiaLog(context, "Please Enter confirm passwoed");
    // }
  }

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
                    controller: _contUserId,
                    hintName: 'User Id',
                    icon: Icons.person,
                    inputType: TextInputType.number,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: _contdepartementName,
                    hintName: 'Nom de departement',
                    icon: Icons.school_outlined,
                    inputType: TextInputType.name,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: _contEmail,
                    hintName: 'Email',
                    icon: Icons.email,
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: _contpassword,
                    hintName: 'Password',
                    icon: Icons.lock,
                    obscureText: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 10),
                  getTextForm(
                    controller: _contCpassword,
                    hintName: "Confirm Password",
                    icon: Icons.lock,
                    obscureText: true,
                    inputType: TextInputType.visiblePassword,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 30, 30, 5),
                    width: double.infinity,
                    child: TextButton(
                        onPressed: signUp,
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
                        Text('Does you have accout?'),
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
