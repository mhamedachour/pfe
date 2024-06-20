import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/addministre.dart';
import 'package:projet_final_pfe/Screens/creerDepartement.dart';
import 'package:projet_final_pfe/Screens/etdiant.dart';
import 'package:projet_final_pfe/Screens/prof.dart';
import 'package:projet_final_pfe/comp/genLogin.dart';
import 'package:projet_final_pfe/comp/genTextForm.dart';
import 'package:projet_final_pfe/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController contUserId = TextEditingController();
  TextEditingController contpassword = TextEditingController();
  late SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // padding: EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginSignupHeader('Log in'),
                getTextForm(
                  controller: contUserId,
                  hintName: 'User Id',
                  icon: Icons.person,
                  inputType: TextInputType.number,
                ),
                SizedBox(height: 10),
                getTextForm(
                  controller: contpassword,
                  hintName: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                  inputType: TextInputType.visiblePassword,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        String id = contUserId.text.trim();
                        String password = contpassword.text.trim();
                        String Nam;
                        String module;
                        QuerySnapshot querySnapshot = await FirebaseFirestore
                            .instance
                            .collection("admin")
                            .where('userId', isEqualTo: id)
                            .get();
                        QuerySnapshot querySnapshot1 = await FirebaseFirestore
                            .instance
                            .collection("etdiant")
                            .where('userId', isEqualTo: id)
                            .get();
                        QuerySnapshot querySnapshot2 = await FirebaseFirestore
                            .instance
                            .collection("prof")
                            .where('userId', isEqualTo: id)
                            .get();
                        if (id.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("empty id")));
                        } else if (password.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("empty password")));
                        } else {
                          try {
                            if (password == querySnapshot.docs[0]['password']) {
                              Nam = querySnapshot.docs[0]['nomdepartement'];
                              id = querySnapshot.docs[0]['userId'];
                              sharedPreferences =
                                  await SharedPreferences.getInstance();
                              sharedPreferences
                                  .setString('admin', id)
                                  .then((_) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => admin(Nam)));
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("password not corect")));
                            }
                          } catch (e) {
                            String error = "";
                            print(e.toString());
                            if (e.toString() ==
                                "RangeError (index): Invalid value: Valid value range is empty: 0") {
                              setState(() {
                                error = "user id does not exist";
                              });
                            } else {
                              setState(() {
                                error = "Error occorred!";
                              });
                            }
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(error)));
                          }
                          try {
                            if (password ==
                                querySnapshot1.docs[0]['password']) {
                              Nam = querySnapshot1.docs[0]['nom'];
                              id = querySnapshot1.docs[0]['userId'];
                              sharedPreferences =
                                  await SharedPreferences.getInstance();
                              sharedPreferences
                                  .setString('etdiant', id)
                                  .then((_) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            pageetdaint(Nam)));
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("password not corect")));
                            }
                          } catch (e) {
                            String error = "";
                            print(e.toString());
                            if (e.toString() ==
                                "RangeError (index): Invalid value: Valid value range is empty: 0") {
                              setState(() {
                                error = "user id does not exist";
                              });
                            } else {
                              setState(() {
                                error = "Error occorred!";
                              });
                            }
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(error)));
                          }
                          try {
                            if (password ==
                                querySnapshot2.docs[0]['password']) {
                              Nam = querySnapshot2.docs[0]['nom'];
                              id = querySnapshot2.docs[0]['userId'];
                              module = querySnapshot2.docs[0]['module'];
                              sharedPreferences =
                                  await SharedPreferences.getInstance();
                              sharedPreferences.setString('prof', id).then((_) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            pageprof(Nam, module)));
                              });
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("password not corect")));
                            }
                          } catch (e) {
                            String error = "";
                            print(e.toString());
                            if (e.toString() ==
                                "RangeError (index): Invalid value: Valid value range is empty: 0") {
                              setState(() {
                                error = "user id does not exist";
                              });
                            } else {
                              setState(() {
                                error = "Error occorred!";
                              });
                            }
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(error)));
                          }
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      )),
                  decoration: BoxDecoration(
                    color: HexColor("#04733B"),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 3, 30, 30),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => creerDepartement()));
                      },
                      child: Text(
                        'Créer un depatement ',
                        style: TextStyle(
                            color: HexColor("#04733B"),
                            fontWeight: FontWeight.w800),
                      )),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
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
