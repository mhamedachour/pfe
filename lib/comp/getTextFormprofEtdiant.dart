import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class getTextFormprofetd extends StatelessWidget {
  TextEditingController controller;
  String hintName;

  bool obscureText;
  TextInputType inputType = TextInputType.text;
  getTextFormprofetd(
      {required this.controller,
      required this.hintName,
      this.obscureText = false,
      required this.inputType});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: inputType,
        validator: (val) => val?.length == 0 ? 'please Enter $hintName' : null,
        onSaved: (val) => controller.text = val!,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: HexColor("#04733B")),
          ),
          hintText: hintName,
          hintStyle: TextStyle(),
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
