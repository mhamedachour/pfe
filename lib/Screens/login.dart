import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projet_final_pfe/Screens/creerDepartement.dart';
import 'package:projet_final_pfe/comp/genLogin.dart';
import 'package:projet_final_pfe/comp/genTextForm.dart';
import 'package:projet_final_pfe/main.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _contUserId = TextEditingController();
  final _contpassword = TextEditingController();
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
                loginSignupHeader('Loogin'),
                getTextForm(
                  controller: _contUserId,
                  hintName: 'User Id',
                  icon: Icons.person,
                  inputType: TextInputType.number,
                ),
                SizedBox(height: 10),
                getTextForm(
                  controller: _contpassword,
                  hintName: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                  inputType: TextInputType.visiblePassword,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
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
